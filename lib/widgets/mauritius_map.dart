import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart'; // Import the LatLng class from latlong2

class MapWidget extends StatelessWidget {
  final double latitude;
  final double longitude;

  MapWidget({required this.latitude, required this.longitude});

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        center: LatLng(latitude, longitude), // Initial map center coordinates (Mauritius)
        zoom: 10.0, // Initial zoom level
      ),
      children: [
        TileLayer(
            urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
            subdomains: ['a', 'b', 'c'],
          ),
      ],
    );
  }
}
