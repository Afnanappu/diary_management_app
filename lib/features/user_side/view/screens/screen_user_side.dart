import 'dart:convert';
import 'package:dairy_management_app/core/components/custom_snack_bar.dart';
import 'package:dairy_management_app/core/constants/app_colors.dart';
import 'package:dairy_management_app/core/constants/app_screen_size.dart';
import 'package:dairy_management_app/features/driver/view_model/bloc_driver/driver_bloc.dart';
import 'package:dairy_management_app/features/routes/view_model/bloc_route/route_bloc.dart';
import 'package:dairy_management_app/features/store/models/store_model.dart';
import 'package:dairy_management_app/features/store/view_model/bloc_store/store_bloc.dart';
import 'package:dairy_management_app/features/user_side/view/components/user_side_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';

import 'package:latlong2/latlong.dart';
import 'package:http/http.dart' as http;
import 'package:location/location.dart';

class ScreenUserSide extends StatefulWidget {
  const ScreenUserSide({super.key});

  @override
  _ScreenUserSideState createState() => _ScreenUserSideState();
}

class _ScreenUserSideState extends State<ScreenUserSide> {
  Location location = Location();
  LatLng? currentLocation;
  List<LatLng> polylineCoordinates = [];
  List<Polyline> polylines = [];
  MapController mapController = MapController();

  @override
  void initState() {
    super.initState();
    _getUserLocation();

    context.read<StoreBloc>().add(StoreEvent.fetchStores());
    context.read<RouteBloc>().add(RouteEvent.fetchRoutes());
    context.read<DriverBloc>().add(DriverEvent.fetchDrivers());
  }

  Future<void> _getUserLocation() async {
    final locData = await location.getLocation();
    setState(() {
      currentLocation = LatLng(locData.latitude!, locData.longitude!);
    });

    // Move map to current location
    mapController.move(currentLocation!, 13.0);
  }

  Future<void> _getPolyline(LatLng destination) async {
    if (currentLocation == null) return;

    final url = Uri.parse(
      "https://router.project-osrm.org/route/v1/driving/${currentLocation!.longitude},${currentLocation!.latitude};${destination.longitude},${destination.latitude}?geometries=geojson",
    );

    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final decoded = json.decode(response.body);
        final coordinates = decoded['routes'][0]['geometry']['coordinates'];

        setState(() {
          polylineCoordinates =
              coordinates.map<LatLng>((c) => LatLng(c[1], c[0])).toList();
          polylines = [
            Polyline(
              points: polylineCoordinates,
              color: Colors.blue,
              strokeWidth: 4.0,
            ),
          ];
        });

        // Move map to destination
        mapController.move(destination, 14.0);
      } else {
        debugPrint("Error fetching route");
      }
    } on http.ClientException catch (e) {
      showCustomSnackBar(context: context, content: e.message.toString());
    } catch (e) {
      showCustomSnackBar(context: context, content: e.toString());
    }
  }

  void _toggleCompletion(StoreModel store) {
    context.read<StoreBloc>().add(
      StoreEvent.editStore(
        store.copyWith(
          isVisited: !store.isVisited,
          visitedTime: store.isVisited ? null : DateTime.now(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("User Routes")),
      body: BlocBuilder<RouteBloc, RouteState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const Center(child: Text("Failed to load routes")),
            loaded: (routeList) {
              final selectedRoute = routeList.firstOrNull;
              if (selectedRoute == null) {
                return const Center(child: Text('No route found'));
              }
              final storeBloc = context.read<StoreBloc>();
              final List<StoreModel> stores;
              if (currentLocation != null) {
                stores = storeBloc.sortStoresByDistance(
                  storeBloc.getRouteStores(selectedRoute.id),
                  currentLocation!.latitude,
                  currentLocation!.longitude,
                );
              } else {
                stores = storeBloc.getRouteStores(selectedRoute.id);
                // stores.sort((a, b) => a.isVisited ? 1 : 0);
              }
              final completedStores =
                  stores.where((element) => element.isVisited == true).length;
              return ListView(
                // shrinkWrap: true,
                children: [
                  SizedBox(
                    height: AppScreenSize.height * 0.6,
                    child: FlutterMap(
                      mapController: mapController,
                      options: MapOptions(
                        initialCenter:
                            currentLocation ?? LatLng(37.7749, -122.4194),
                        initialZoom: 13.0,
                      ),
                      children: [
                        TileLayer(
                          urlTemplate:
                              "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
                        ),
                        if (currentLocation != null)
                          MarkerLayer(
                            markers: [
                              Marker(
                                point: currentLocation!,
                                child: const Icon(
                                  Icons.location_pin,
                                  color: Colors.red,
                                  size: 40,
                                ),
                              ),
                            ],
                          ),
                        MarkerLayer(
                          markers:
                              stores.map((store) {
                                return Marker(
                                  point: LatLng(store.lat, store.long),
                                  child: GestureDetector(
                                    onTap: () async {
                                      await _getPolyline(
                                        LatLng(store.lat, store.long),
                                      );
                                    },
                                    child: Icon(
                                      Icons.store,
                                      color:
                                          store.isVisited
                                              ? Colors.green
                                              : Colors.grey,
                                      size: 40,
                                    ),
                                  ),
                                );
                              }).toList(),
                        ),
                        PolylineLayer(polylines: polylines),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Assigned Route",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '$completedStores / ${stores.length}',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color:
                                completedStores == stores.length
                                    ? AppColors.primary
                                    : AppColors.secondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: stores.length,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      final store = stores[index];
                      return UserSideListTile(
                        store: store,
                        trailing: IconButton(
                          icon: Icon(
                            Icons.check_circle,
                            color: store.isVisited ? Colors.green : Colors.grey,
                          ),
                          onPressed: () {
                            setState(() {
                              _toggleCompletion(store);
                            });
                          },
                        ),
                        onTap: () {
                          _getPolyline(LatLng(store.lat, store.long));
                        },
                      );
                    },
                  ),
                ],
              );
            },
            loading: () => const Center(child: CircularProgressIndicator()),
          );
        },
      ),
    );
  }
}
