import "package:flutter/material.dart";
import '../../common_components/commoncomp_barrel.dart';
import "../../utils/utils_barrel.dart";
import "./widgets/ContactItem.dart";
import "package:google_fonts/google_fonts.dart";

class ContacUsScreen extends StatelessWidget {
  const ContacUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        iconTheme: const IconThemeData().copyWith(
          color: Colors.white,
        ),
        centerTitle: true,
        backgroundColor: brownColor,
        title: Text("Contact Us", style: GoogleFonts.lora()),
        actions: const [],
      ),
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          decoration: common_bg_image,
          child: Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 7),
              height: size.height * 0.50,
              width: size.width * 0.95,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade500,
                    offset: const Offset(4, 4),
                    spreadRadius: 1,
                    blurRadius: 15,
                  ),
                  BoxShadow(
                    spreadRadius: 1,
                    color: Colors.grey.shade400,
                    offset: const Offset(-4, -4),
                    blurRadius: 15,
                  ),
                ],
                color: brownColor,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ContactItem(text: "inovalet@gmail.com", icon: Icons.email),
                  ContactItem(text: "+92 334 3451077", icon: Icons.phone),
                  ContactItem(text: "www.inovalet.com", icon: Icons.web),
                  ContactItem(text: "DHA, Karachi", icon: Icons.map_outlined),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
