import "package:flutter/material.dart";
import "../screens/screens_barrel.dart";

class RouteGenerator {
  static const String loginscreenRoute = "/login";
  static const String splashscreenRoute = "/";
  static const String registrationscreenRoute = "/registration";

  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashscreenRoute:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case loginscreenRoute:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case registrationscreenRoute:
        return MaterialPageRoute(builder: (_) => RegistrationScreen());
      default:
        throw const FormatException("Invalid Route");
    }
  }
}
