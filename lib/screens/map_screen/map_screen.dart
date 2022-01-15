import "package:flutter/material.dart";
import 'package:google_maps_flutter/google_maps_flutter.dart';
import "package:google_fonts/google_fonts.dart";
import "../../utils/utils_barrel.dart";

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  CameraPosition camPos =
      const CameraPosition(target: LatLng(24.8200, 67.0307), zoom: 18);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: brownColor,
        title: Text(
          "Choose a Location",
          style: GoogleFonts.lobster(
            textStyle: const TextStyle(),
          ),
        ),
      ),
      body: SafeArea(
        child: GoogleMap(
          initialCameraPosition: camPos,
          myLocationEnabled: true,
        ),
      ),
    );
  }
}
