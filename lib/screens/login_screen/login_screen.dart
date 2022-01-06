import "package:flutter/material.dart";
import "./widgets/widgets_barrel.dart";
import "package:google_fonts/google_fonts.dart";
import "../../utils/utils_barrel.dart";

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
      backgroundColor: brown50,
      appBar: AppBar(
        elevation: 2,
        iconTheme: const IconThemeData().copyWith(
          color: Colors.white,
        ),
        backgroundColor: brownColor,
        title: Row(children: [
          Text("Login", style: loginscreenAppBarTitleStyle),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Icon(Icons.directions_car))
        ]),
        actions: const [],
      ),
      body: SafeArea(
        child: SizedBox(
          width: screenSize.width,
          height: screenSize.height,
          child: Container(
            decoration: bg_image,
            child: Center(
              child: Container(),
            ),
          ),
        ),
      ),
    );
  }
}
