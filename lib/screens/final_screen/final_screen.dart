import "package:flutter/material.dart";
import '../../common_components/commoncomp_barrel.dart';
import '../../routes/routes.dart';
import "../../utils/utils_barrel.dart";
import "package:google_fonts/google_fonts.dart";
import "../screens_barrel.dart";

class FinalScreen extends StatelessWidget {
  const FinalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: brownColor,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.done),
            onPressed: () {
              Navigator.popUntil(
                  context, ModalRoute.withName(RouteGenerator.homescreenRoute));
            },
          ),
        ],
        title: Text(
          "Inovalet",
          style: GoogleFonts.lobster(
            textStyle: const TextStyle(),
          ),
        ),
      ),
      body: SafeArea(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Container(
            decoration: common_bg_image,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "Your validation code is: ",
                    style: GoogleFonts.lobster(
                      textStyle: TextStyle(
                        fontSize: 25,
                        color: brownColor,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    HomeScreen.code,
                    style: GoogleFonts.lora(
                      textStyle: TextStyle(
                        fontSize: 17,
                        color: brownShade,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
