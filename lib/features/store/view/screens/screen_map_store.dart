import 'package:dairy_management_app/features/store/view/components/map_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';

class ScreenMapStore extends StatefulWidget {
  const ScreenMapStore({super.key});

  @override
  State<ScreenMapStore> createState() => _SelectLocationScreenState();
}

class _SelectLocationScreenState extends State<ScreenMapStore> {
  LatLng? _currentLocation;
  LatLng? _selectedLocation;

  @override
  void initState() {
    super.initState();
    _getUserLocation();
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
      _currentLocation = LatLng(position.latitude, position.longitude);
      // _selectedLocation = _currentLocation;
    });
  }

  void _onMapTap(TapPosition tapPosition, LatLng point) {
    setState(() {
      _selectedLocation = point;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Select a Location')),
      body:
          _currentLocation == null
              ? Center(child: CircularProgressIndicator())
              : MapWidget(
                currentLocation: _currentLocation,
                selectedLocation: _selectedLocation,
                onTap: _onMapTap,
              ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_selectedLocation != null) {
            Navigator.pop(context, _selectedLocation);
          }
        },
        child: Icon(Icons.check),
      ),
    );
  }
}
