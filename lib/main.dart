import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import "./routes/routes.dart";
import 'package:camera/camera.dart';

// late List<CameraDescription> cameras;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  // try {
  //   cameras = await availableCameras();
  // } on CameraException catch (e) {
  //   FormatException(e.code, e.description);
  // }

  runApp(Inovalet());
}

class Inovalet extends StatelessWidget {
  const Inovalet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Inovalet",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(),
      themeMode: ThemeMode.light,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
