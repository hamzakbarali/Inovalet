import "package:flutter/material.dart";
import "../screens/screens_barrel.dart";

class RouteGenerator {
  static const String loginscreenRoute = "/";
  static const String registrationscreenRoute = "/registration";

  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case loginscreenRoute:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case registrationscreenRoute:
        return MaterialPageRoute(builder: (_) => RegistrationScreen());
      default:
        throw const FormatException("Invalid Route");
    }
  }
}
