import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "../utils/utils_barrel.dart";

class SubmitBtn extends StatelessWidget {
  late final Size size;

  SubmitBtn({required this.size, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        elevation: 2,
        shadowColor: brownColor,
        backgroundColor: Colors.grey.shade200,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        textStyle: GoogleFonts.lora(
          textStyle: TextStyle(
            color: brownColor,
            letterSpacing: 2,
            fontSize: size.height * 0.020,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      onPressed: () {},
      child: Text(
        "Submit",
        style: GoogleFonts.lora(
          textStyle: TextStyle(
            letterSpacing: 2,
            color: brownColor,
            fontSize: size.height * 0.020,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
