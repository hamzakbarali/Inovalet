import 'dart:typed_data';
import "package:flutter/material.dart";
import 'package:google_maps_flutter/google_maps_flutter.dart';
import "package:google_fonts/google_fonts.dart";
import "../../utils/utils_barrel.dart";
import "package:location/location.dart";

class CallValetMapScreen extends StatefulWidget {
  const CallValetMapScreen({Key? key}) : super(key: key);

  @override
  _CallValetMapScreenState createState() => _CallValetMapScreenState();
}

class _CallValetMapScreenState extends State<CallValetMapScreen> {
  late final Location _curLocation;
  late final CameraPosition _camPos;
  late final GoogleMapController _mapController;
  late LatLng _valetPos;
  late Set<Marker> _markers;
  late LatLng _pickedLoc;

  @override
  void initState() {
    super.initState();
    _curLocation = Location();
    _camPos =
        const CameraPosition(target: LatLng(24.8200, 67.0307), zoom: 18.2);
    _valetPos = const LatLng(24.820019, 67.030432);
    _markers = Set<Marker>();
    setMarkers();
  }

  void setMarkers() async {
    BitmapDescriptor icon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(), "assets/car_icon2.png");
    setState(() {
      _markers.add(Marker(
        position: _valetPos,
        markerId: const MarkerId("Valet 1"),
        flat: true,
        zIndex: 2,
        anchor: const Offset(0.5, 0.5),
        icon: icon,
      ));
    });
  }

  @override
  void dispose() {
    _mapController.dispose();
    super.dispose();
  }

  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: brownColor,
          title: Text(
            "Calling Valet",
            style: GoogleFonts.lobster(
              textStyle: const TextStyle(),
            ),
          ),
          actions: []),
      body: SafeArea(
        child: GoogleMap(
          zoomGesturesEnabled: true,
          markers: _markers,
          onMapCreated: _onMapCreated,
          initialCameraPosition: _camPos,
          myLocationEnabled: true,
        ),
      ),
    );
  }
}
