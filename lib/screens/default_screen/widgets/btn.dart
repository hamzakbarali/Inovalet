import "package:flutter/material.dart";

class Btn extends StatelessWidget {
  late final String text;
  late final String routeName;
  late final Size size;
  Btn(
      {required this.text,
      required this.routeName,
      required this.size,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * 0.8,
      height: size.height * 0.05,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.tealAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          textStyle: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        onPressed: () {
          Navigator.pushNamed(context, routeName);
        },
      ),
    );
  }
}
