import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:latlong2/latlong.dart';

import 'package:dairy_management_app/core/components/custom_snack_bar.dart';
import 'package:dairy_management_app/core/constants/app_colors.dart';
import 'package:dairy_management_app/core/constants/app_screen_size.dart';
import 'package:dairy_management_app/features/driver/view_model/bloc_driver/driver_bloc.dart';
import 'package:dairy_management_app/features/routes/view_model/bloc_route/route_bloc.dart';
import 'package:dairy_management_app/features/store/models/store_model.dart';
import 'package:dairy_management_app/features/store/view_model/bloc_store/store_bloc.dart';
import 'package:dairy_management_app/features/user_side/view/components/user_side_list_tile.dart';

class ScreenUserSide extends StatefulWidget {
  const ScreenUserSide({super.key});

  @override
  State<ScreenUserSide> createState() => _ScreenUserSideState();
}

class _ScreenUserSideState extends State<ScreenUserSide> {
  final MapController mapController = MapController();
  LatLng? currentLocation;
  List<LatLng> polylineCoordinates = [];
  List<Polyline> polylines = [];

  @override
  void initState() {
    super.initState();
    _loadBlocs();
  }

  Future<void> checkAndRequestLocationService() async {
    final serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      bool? openSettings = await showDialog(
        // ignore: use_build_context_synchronously
        context: context,
        builder:
            (context) => AlertDialog(
              title: Text("Enable Location"),
              content: Text(
                "Location services are disabled. Please enable them.",
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context, false),
                  child: Text("Cancel"),
                ),
                TextButton(
                  onPressed: () => Navigator.pop(context, true),
                  child: Text("Enable"),
                ),
              ],
            ),
      );

      if (openSettings == true) {
        await Geolocator.openLocationSettings();
      }
    }
  }

  Future<void> _getUserLocation() async {
    LocationPermission permission;

    // Check if location services are enabled
    await checkAndRequestLocationService();

    // Check permission
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.deniedForever) {
        return;
      }
    }

    // Get current location
    Position position = await Geolocator.getCurrentPosition(
      locationSettings: LocationSettings(accuracy: LocationAccuracy.high),
    );

    setState(() {
      currentLocation = LatLng(position.latitude, position.longitude);
      mapController.move(currentLocation!, 13.0);
    });
  }

  /// Loads data from the Bloc
  void _loadBlocs() {
    context.read<StoreBloc>().add(StoreEvent.fetchStores());
    context.read<RouteBloc>().add(RouteEvent.fetchRoutes());
    context.read<DriverBloc>().add(DriverEvent.fetchDrivers());
  }

  /// Fetches and draws the polyline route between the user and a store
  Future<void> _drawRouteToStore(LatLng destination) async {
    if (currentLocation == null) return;

    final url = Uri.parse(
      "https://router.project-osrm.org/route/v1/driving/"
      "${currentLocation!.longitude},${currentLocation!.latitude};"
      "${destination.longitude},${destination.latitude}?geometries=geojson",
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

        mapController.move(destination, 14.0);
      } else {
        showCustomSnackBar(context: context, content: "Error fetching route.");
      }
    } catch (e) {
      showCustomSnackBar(context: context, content: e.toString());
    }
  }

  /// Toggles the store visit completion state
  void _toggleStoreCompletion(StoreModel store) {
    context.read<StoreBloc>().add(
      StoreEvent.editStore(
        store.copyWith(
          isVisited: !store.isVisited,
          visitedTime: store.isVisited ? null : DateTime.now(),
        ),
      ),
    );

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("User Routes")),
      body: BlocBuilder<RouteBloc, RouteState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (routeList) {
              final selectedRoute = routeList.firstOrNull;
              if (selectedRoute == null) {
                return const Center(child: Text("No route found"));
              }

              return _buildRouteScreen(selectedRoute.id);
            },
            orElse: () => const Center(child: Text("Failed to load routes")),
          );
        },
      ),
    );
  }

  /// Builds the UI for the route screen
  Widget _buildRouteScreen(String routeId) {
    final storeBloc = context.read<StoreBloc>();

    //Get the stores sorted based on shortest first on normal
    final List<StoreModel> stores =
        currentLocation != null
            ? storeBloc.sortStoresByDistance(
              storeBloc.getRouteStores(routeId),
              currentLocation!.latitude,
              currentLocation!.longitude,
            )
            : storeBloc.getRouteStores(routeId);

    final completedStores = stores.where((store) => store.isVisited).length;

    return ListView(
      children: [
        _buildMap(stores),
        _buildRouteHeader(stores.length, completedStores),
        _buildStoreList(stores),
      ],
    );
  }

  /// Builds the map widget
  Widget _buildMap(List<StoreModel> stores) {
    return SizedBox(
      height: AppScreenSize.height * 0.6,
      child: FlutterMap(
        mapController: mapController,
        options: MapOptions(
          initialCenter: currentLocation ?? LatLng(37.7749, -122.4194),
          initialZoom: 13.0,
          onMapReady: () {
            _getUserLocation(); //
          },
        ),
        children: [
          TileLayer(
            urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
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
                      onTap:
                          () async =>
                              _drawRouteToStore(LatLng(store.lat, store.long)),
                      child: Icon(
                        Icons.store,
                        color: store.isVisited ? Colors.green : Colors.grey,
                        size: 40,
                      ),
                    ),
                  );
                }).toList(),
          ),
          PolylineLayer(polylines: polylines),
        ],
      ),
    );
  }

  /// Builds the route header with completion status
  Widget _buildRouteHeader(int totalStores, int completedStores) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Assigned Route",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            '$completedStores / $totalStores',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color:
                  completedStores == totalStores
                      ? AppColors.primary
                      : AppColors.secondary,
            ),
          ),
        ],
      ),
    );
  }

  /// Builds the store list
  Widget _buildStoreList(List<StoreModel> stores) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: stores.length,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        final store = stores[index];
        return UserSideListTile(
          store: store,
          trailing: IconButton(
            icon: Icon(
              Icons.check_circle,
              color: store.isVisited ? Colors.green : Colors.grey,
            ),
            onPressed: () => _toggleStoreCompletion(store),
          ),
          onTap: () => _drawRouteToStore(LatLng(store.lat, store.long)),
        );
      },
    );
  }
}
