import "package:flutter/material.dart";
import "../screens/screens_barrel.dart";

class RouteGenerator {
  static const String loginscreenRoute = "/";

  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case loginscreenRoute:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      default:
        throw const FormatException("Invalid Route");
    }
  }
}
