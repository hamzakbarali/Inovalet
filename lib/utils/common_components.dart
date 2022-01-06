import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "../../../utils/utils_barrel.dart";

BoxDecoration common_bg_image = const BoxDecoration(
  image: DecorationImage(
    fit: BoxFit.cover,
    image: AssetImage("assets/common_bg_image.jpg"),
  ),
);

BoxDecoration signupscreen_bg_image = const BoxDecoration(
  image: DecorationImage(
    fit: BoxFit.cover,
    image: AssetImage("assets/signupscreen_bg.jpg"),
  ),
);

class InputField extends StatelessWidget {
  late final Size size;
  late final TextEditingController controller;
  late final bool obscure;
  late final String hint;
  late final TextInputType inputType;

  InputField(
      {required this.size,
      required this.controller,
      required this.hint,
      this.obscure = false,
      this.inputType = TextInputType.text,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        cursorColor: brownColor,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: GoogleFonts.lora(
            textStyle: const TextStyle(
              fontSize: 13,
            ),
          ),
          filled: true,
          disabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          fillColor: brownLightShade,
          focusColor: brownLightShade,
          hoverColor: brownLightShade,
        ),
        controller: this.controller,
        obscureText: obscure,
        style: GoogleFonts.lora(
          textStyle: TextStyle(
            wordSpacing: 10,
            color: brownColor,
            fontSize: 15,
          ),
        ),
      ),
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.04),
    );
  }
}
