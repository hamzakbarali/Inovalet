import "package:flutter/material.dart";
import 'package:shimmer_animation/shimmer_animation.dart';
import "dart:math";
import 'package:animated_text_kit/animated_text_kit.dart';
import "../../routes/routes.dart";
import "../../utils/utils_barrel.dart";

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _transition(BuildContext ctx) async {
    await Future.delayed(const Duration(seconds: 6), () {
      Navigator.pushReplacementNamed(ctx, RouteGenerator.defaultscreenRoute);
    });
  }

  @override
  Widget build(BuildContext context) {
    _transition(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Shimmer(
        color: Colors.blueAccent,
        child: SafeArea(
          child: Center(
            child: Transform.rotate(
              angle: -pi / 8.0,
              child: AnimatedTextKit(
                repeatForever: true,
                animatedTexts: [
                  FlickerAnimatedText(
                    "Inovalet",
                    speed: const Duration(milliseconds: 2000),
                    textStyle: splashscreenHeadingTextTheme.bodyText1,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
