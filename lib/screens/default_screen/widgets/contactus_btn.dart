import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "../../../utils/utils_barrel.dart";

class ContactUsBtn extends StatelessWidget {
  late final String text;
  late final String routeName;
  late final Size size;

  ContactUsBtn({
    required this.text,
    required this.routeName,
    required this.size,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        "Contact Us",
        style: GoogleFonts.lora(
          textStyle: TextStyle(
            letterSpacing: 2,
            color: brownColor,
            fontSize: 13,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      onPressed: () {
        Navigator.pushNamed(context, routeName);
      },
    );
  }
}
