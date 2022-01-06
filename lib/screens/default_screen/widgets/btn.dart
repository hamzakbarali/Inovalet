import "package:flutter/material.dart";
import "../../../utils/utils_barrel.dart";
import "package:google_fonts/google_fonts.dart";

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
      height: size.height * 0.055,
      child: TextButton(
        style: TextButton.styleFrom(
          elevation: 2,
          shadowColor: brownColor,
          backgroundColor: pinkColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          textStyle: GoogleFonts.lora(
            textStyle: const TextStyle(
              color: Colors.white,
              letterSpacing: 2,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        child: Text(
          text,
          style: GoogleFonts.lora(
            textStyle: TextStyle(
              letterSpacing: 2,
              color: brownColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        onPressed: () {
          Navigator.pushNamed(context, routeName);
        },
      ),
    );
  }
}
