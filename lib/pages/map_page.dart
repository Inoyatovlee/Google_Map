import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  static LatLng _pGooglePlex = LatLng(52.2165157, 6.9437819);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
          initialCameraPosition: CameraPosition(
        target: _pGooglePlex,
        zoom: 17, //uzoq yoki yaqindan ko'rinishi
      )),
    );
  }
}
