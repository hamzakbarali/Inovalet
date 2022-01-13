import "package:flutter/material.dart";
import '../../common_components/bg_image.dart';
import "../../utils/utils_barrel.dart";
import "../../data/data_barrel.dart";
import "package:collection/collection.dart";
import "package:google_fonts/google_fonts.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final args = ModalRoute.of(context)!.settings.arguments;
    final user = users.firstWhereOrNull((element) {
      return element.id == args;
    });

    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Container(
            decoration: common_bg_image,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: brownColor),
                          borderRadius: BorderRadius.circular(50)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          "assets/abd.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    radius: 45,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    user!.name,
                    style: GoogleFonts.lobster(
                      textStyle: TextStyle(
                        color: brownColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
