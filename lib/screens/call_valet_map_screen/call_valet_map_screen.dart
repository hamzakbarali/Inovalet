import "package:flutter/material.dart";
import 'package:google_maps_flutter/google_maps_flutter.dart';
import "package:google_fonts/google_fonts.dart";
import 'package:inovalet/routes/routes.dart';
import "../../utils/utils_barrel.dart";
import "package:location/location.dart";
import "package:duration_picker/duration_picker.dart";
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

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
  late Duration? _duration;
  late bool shudBeVisible;

  @override
  void initState() {
    super.initState();
    _curLocation = Location();
    _camPos =
        const CameraPosition(target: LatLng(24.8200, 67.0307), zoom: 18.2);
    _valetPos = const LatLng(24.820019, 67.030432);
    _markers = Set<Marker>();
    _duration = const Duration(minutes: 0);
    setMarkers();
    shudBeVisible = false;
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
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: brownColor,
        onPressed: () async {
          var duration = await showDurationPicker(
            context: context,
            initialTime: const Duration(minutes: 5),
            decoration: BoxDecoration(
                color: grey300,
                borderRadius: const BorderRadius.all(Radius.circular(20))),
          );
          if (duration != null) {
            setState(() {
              _duration = duration;
              shudBeVisible = true;
            });
          }
        },
        child: Icon(
          Icons.timer,
          color: pinkColor,
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: brownColor,
        title: Text(
          "Calling Valet",
          style: GoogleFonts.lora(
            textStyle: const TextStyle(),
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            GoogleMap(
              zoomGesturesEnabled: true,
              markers: _markers,
              onMapCreated: _onMapCreated,
              initialCameraPosition: _camPos,
              myLocationEnabled: true,
            ),
            Positioned(
                child: Visibility(
                  visible: shudBeVisible,
                  child: CircularCountDownTimer(
                    width: 70,
                    height: 70,
                    duration: _duration!.inMinutes * 10,
                    fillColor: brownColor,
                    ringColor: pinkColor,
                    onComplete: () {
                      Navigator.pushNamed(
                          context, RouteGenerator.finalscreenRoute);
                    },
                  ),
                ),
                top: 10,
                right: 10),
          ],
        ),
      ),
    );
  }
}
