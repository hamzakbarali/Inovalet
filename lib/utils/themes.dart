import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import "colors.dart";

TextTheme splashscreenHeadingTextTheme = TextTheme(
  bodyText1: GoogleFonts.lobster(
    textStyle: const TextStyle(
      fontSize: 70,
      fontWeight: FontWeight.bold,
    ),
  ),
);

TextTheme defaultscreenHeadingTextTheme = TextTheme(
  bodyText1: GoogleFonts.lobster(
    fontWeight: FontWeight.bold,
  ),
);

TextStyle commonAppBarTitleStyle = GoogleFonts.lora(
  textStyle: const TextStyle(
    color: Colors.white,
  ),
);
