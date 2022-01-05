import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import "./routes/routes.dart";

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
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
