import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "../utils/utils_barrel.dart";

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
      height: size.height * 0.08,
      child: TextFormField(
        cursorColor: brownColor,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: GoogleFonts.lora(
            textStyle: const TextStyle(
              fontSize: 13,
              wordSpacing: 0.5,
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
          fillColor: Colors.grey.shade200,
          focusColor: Colors.grey.shade200,
          hoverColor: Colors.grey.shade200,
        ),
        controller: controller,
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
