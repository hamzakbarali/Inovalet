import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import '../../routes/routes.dart';
import '../../common_components/bg_image.dart';
import "../../utils/utils_barrel.dart";
import "../screens_barrel.dart";
// import 'package:camera/camera.dart';
import 'package:permission_handler/permission_handler.dart';
import "../../main.dart";

class QrScannerScreen extends StatefulWidget {
  const QrScannerScreen({Key? key}) : super(key: key);

  @override
  _QrScannerScreenState createState() => _QrScannerScreenState();
}

class _QrScannerScreenState extends State<QrScannerScreen> {
  late final PermissionStatus status;
  // late CameraController _controller;

  @override
  void initState() {
    super.initState();
    // _controller = CameraController(cameras.first, ResolutionPreset.max);
    // _controller.initialize().then((_) {
    //   if (!mounted) {
    //     return;
    //   }
    //   setState(() {});
    // });
  }

  @override
  void dispose() {
    // _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // if (!_controller.value.isInitialized) {
    //   return Container();
    // }
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Scan QR Code",
          style: GoogleFonts.lora(
            textStyle: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: brownColor,
      ),
      body: SafeArea(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child:  Container(),
        ),
      ),
    );
  }
}
