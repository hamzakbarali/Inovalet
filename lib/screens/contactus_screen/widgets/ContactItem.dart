import "package:flutter/material.dart";
import "../../../utils/utils_barrel.dart";
import "package:google_fonts/google_fonts.dart";

class ContactItem extends StatelessWidget {
  late final IconData icon;
  late final String text;

  ContactItem({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.70,
      child: ListTile(
        leading: Icon(
          icon,
          color: brownShade,
        ),
        title: Text(
          text,
          style: GoogleFonts.lora(
            textStyle: TextStyle(
              color: Colors.grey.shade200,
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
