import "package:flutter/material.dart";
import 'package:inovalet/screens/contactus_screen/contactus_screen.dart';
import "../screens/screens_barrel.dart";

class RouteGenerator {
  static const String loginscreenRoute = "/login";
  static const String splashscreenRoute = "/";
  static const String contactusscreenRoute = "/contact-us";
  static const String defaultscreenRoute = "/default";
  static const String registrationscreenRoute = "/registration";
  static const String homescreenRoute = "/home";

  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashscreenRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case defaultscreenRoute:
        return MaterialPageRoute(builder: (_) => const DefaultScreen());
      case loginscreenRoute:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case registrationscreenRoute:
        return MaterialPageRoute(builder: (_) => const RegistrationScreen());
      case contactusscreenRoute:
        return MaterialPageRoute(builder: (_) => const ContacUsScreen());
      case homescreenRoute:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        throw const FormatException("Invalid Route");
    }
  }
}
