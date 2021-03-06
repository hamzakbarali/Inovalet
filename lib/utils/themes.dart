import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

TextTheme splashscreenHeadingTextTheme = TextTheme(
  bodyText1: GoogleFonts.lora(
    textStyle: const TextStyle(
      fontSize: 70,
      fontWeight: FontWeight.bold,
    ),
  ),
);

TextTheme defaultscreenHeadingTextTheme = TextTheme(
  bodyText1: GoogleFonts.lora(
    textStyle: const TextStyle(
      color: Colors.white,
    ),
  ),
);

TextStyle commonAppBarTitleStyle = GoogleFonts.lora(
  textStyle: const TextStyle(
    color: Colors.white,
  ),
);
