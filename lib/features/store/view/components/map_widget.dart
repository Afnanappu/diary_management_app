import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapWidget extends StatelessWidget {
  const MapWidget({
    super.key,
    LatLng? currentLocation,
    LatLng? selectedLocation,
    this.onTap,
  }) : _currentLocation = currentLocation,
       _selectedLocation = selectedLocation;

  final LatLng? _currentLocation;
  final LatLng? _selectedLocation;
  final void Function(TapPosition tapPosition, LatLng point)? onTap;

  @override
  Widget build(BuildContext context) {
    log((_currentLocation != null).toString());
    return FlutterMap(
      options: MapOptions(
        initialZoom: 15.0,
        initialCenter: _currentLocation ?? LatLng(50.5, 30.50),
        onTap: onTap,
      ),
      children: [
        TileLayer(
          urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
        ),
        MarkerLayer(
          markers: [
            if (_selectedLocation != null)
              Marker(
                point: _selectedLocation,
                width: 40,
                height: 40,
                child: Icon(Icons.location_pin, color: Colors.red, size: 40),
              ),
          ],
        ),
      ],
    );
  }
}
