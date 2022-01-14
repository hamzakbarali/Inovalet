import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "../../../utils/utils_barrel.dart";

class ValetBtn extends StatelessWidget {
  late final String text;
  late final VoidCallback onPress;
  ValetBtn({required this.text, required this.onPress, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(text,
          style: GoogleFonts.lobster(
              textStyle: TextStyle(fontSize: 25, color: brownColor))),
      onPressed: onPress,
    );
  }
}
