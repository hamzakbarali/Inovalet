import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import "colors.dart";

TextTheme splashscreenHeadingTextTheme = TextTheme(
  bodyText1: GoogleFonts.lobster(
    textStyle: const TextStyle(
      color: Colors.blue,
      fontSize: 70,
      fontWeight: FontWeight.bold,
    ),
  ),
);

TextTheme defaultscreenHeadingTextTheme = TextTheme(
  bodyText1: GoogleFonts.lobster(
    color: Colors.blue,
    fontWeight: FontWeight.bold,
  ),
);

TextStyle loginscreenAppBarTitleStyle = GoogleFonts.lora(
  textStyle: TextStyle(
    color: Colors.white,
  ),
);
