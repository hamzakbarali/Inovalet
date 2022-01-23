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
  static const String bookValetMapScreenRoute = "/book-valet";
  static const String callValetMapScreenRoute = "/call-valet";
  static const String bookinginfoScreenRoute = "/booking-info";
  static const String finalscreenRoute = "/end";
  static const String validationscreenRoute = "/validation";
  static const String qrscannerscreenRoute = "/qr-scanner";
  static const String paymentscreenRoute = "/payment";

  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashscreenRoute:
        return MaterialPageRoute(
            builder: (_) => const SplashScreen(), settings: settings);
      case defaultscreenRoute:
        return MaterialPageRoute(
            builder: (_) => const DefaultScreen(), settings: settings);
      case loginscreenRoute:
        return MaterialPageRoute(
            builder: (_) => const LoginScreen(), settings: settings);
      case registrationscreenRoute:
        return MaterialPageRoute(
            builder: (_) => const RegistrationScreen(), settings: settings);
      case contactusscreenRoute:
        return MaterialPageRoute(
            builder: (_) => const ContacUsScreen(), settings: settings);
      case homescreenRoute:
        return MaterialPageRoute(
            builder: (_) => const HomeScreen(), settings: settings);
      case bookValetMapScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const BookValetMapScreen(), settings: settings);
      case callValetMapScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const CallValetMapScreen(), settings: settings);
      case bookinginfoScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const BookingInfoScreen(), settings: settings);
      case finalscreenRoute:
        return MaterialPageRoute(
            builder: (_) => const FinalScreen(), settings: settings);
      case validationscreenRoute:
        return MaterialPageRoute(
            builder: (_) => const ValidationScreen(), settings: settings);
      case qrscannerscreenRoute:
        return MaterialPageRoute(
            builder: (_) => const QrScannerScreen(), settings: settings);
      case paymentscreenRoute:
        return MaterialPageRoute(
            builder: (_) => const PaymentScreen(), settings: settings);

      default:
        throw const FormatException("Invalid Route");
    }
  }
}
