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
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.asset("assets/logo.jpeg"),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
