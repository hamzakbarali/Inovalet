import "package:flutter/material.dart";

class Btn extends StatelessWidget {
  late String text;
  late String routeName;
  late double size;
  Btn({required this.text, required this.routeName, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
      )),
      child: Text(text),
      onPressed: () {
        Navigator.pushNamed(context, routeName);
      },
    );
  }
}
