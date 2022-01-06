import "package:flutter/material.dart";
import "./widgets/widgets_barrel.dart";

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          width: screenSize.width,
          height: screenSize.height,
          child: Center(
            child: Text("He"),
          ),
        ),
      ),
    );
  }
}
