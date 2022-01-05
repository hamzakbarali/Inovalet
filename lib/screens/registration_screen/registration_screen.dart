import "package:flutter/material.dart";
import "./widgets/widgets_barrel.dart";

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Form(
            child: TextFormField(),
          ),
        ]),
      ),
    );
  }
}
