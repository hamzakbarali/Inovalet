import "package:flutter/material.dart";
import 'package:google_maps_flutter/google_maps_flutter.dart';
import "package:google_fonts/google_fonts.dart";
import '../../screens/screens_barrel.dart';
import "../../utils/utils_barrel.dart";
import "package:location/location.dart";
import "package:uuid/uuid.dart";
import "../../routes/routes.dart";

class BookValetMapScreen extends StatefulWidget {
  const BookValetMapScreen({Key? key}) : super(key: key);

  @override
  _BookValetMapScreenState createState() => _BookValetMapScreenState();
}

class _BookValetMapScreenState extends State<BookValetMapScreen> {
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
    HomeScreen.code = const Uuid().v4();
    HomeScreen.gotCode = true;
    setMarkers();
  }

  void setMarkers() async {
    BitmapDescriptor icon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(), "assets/valet_icon.png");
    setState(() {
      _markers.add(Marker(
        position: _valetPos,
        onTap: () => _showValetBookingSnackbar("Valet 1", false, ""),
        markerId: const MarkerId("Valet 1"),
        flat: true,
        zIndex: 2,
        anchor: const Offset(0.5, 0.5),
        icon: icon,
      ));
      _markers.add(Marker(
        onTap: () => _showValetBookingSnackbar("Valet 2", false, ""),
        position: const LatLng(24.819817, 67.030453),
        markerId: const MarkerId("Valet 2"),
        flat: true,
        zIndex: 2,
        anchor: const Offset(0.5, 0.5),
        icon: icon,
      ));
      _markers.add(Marker(
        onTap: () => _showValetBookingSnackbar("Valet 3", false, ""),
        position: const LatLng(24.820132, 67.030769),
        markerId: const MarkerId("Valet 3"),
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

  void _showValetBookingSnackbar(String valetNum, bool showCode, code) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          (showCode)
              ? "Your validation code is $code"
              : "You've chosen $valetNum",
          textAlign: TextAlign.center,
          style: GoogleFonts.lora(
            textStyle: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: brownColor,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: brownColor,
          title: Text(
            "Book Valet",
            style: GoogleFonts.lobster(
              textStyle: const TextStyle(),
            ),
          ),
          actions: [
            IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  Future.delayed(const Duration(seconds: 4)).then((_) {
                    Navigator.pushNamed(
                      context,
                      RouteGenerator.bookinginfoScreenRoute,
                    );
                  });
                  _showValetBookingSnackbar("", true, HomeScreen.code);
                }),
          ]),
      body: SafeArea(
        child: GoogleMap(
          onTap: (LatLng pos) {
            setState(() {
              _pickedLoc = pos;
              _markers.add(
                  Marker(markerId: const MarkerId("Abdullah"), position: pos));
            });
          },
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
