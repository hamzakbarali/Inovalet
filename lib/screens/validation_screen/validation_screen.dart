import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import '../../routes/routes.dart';
import '../../common_components/bg_image.dart';
import "../../utils/utils_barrel.dart";
import "../screens_barrel.dart";

class ValidationScreen extends StatelessWidget {
  const ValidationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: const Icon(Icons.done),
              onPressed: () {
                Navigator.popUntil(context,
                    ModalRoute.withName(RouteGenerator.homescreenRoute));
              },
            ),
          ],
          backgroundColor: brownColor,
          centerTitle: true,
          title: Text(
            "Validate Booking",
            style: GoogleFonts.lora(),
          ),
          bottom: const TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Icon(
                Icons.add_to_home_screen,
              ),
              Icon(
                Icons.add_a_photo,
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          Container(
            decoration: common_bg_image,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "Your validation code is: ",
                    style: GoogleFonts.lora(
                      textStyle: TextStyle(
                        fontSize: 22,
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
                        fontSize: 27,
                        color: brownShade,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: common_bg_image,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Scanning QR Code",
                  style: GoogleFonts.lora(
                    textStyle: TextStyle(
                      fontSize: 27,
                      color: brownShade,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Container(
                    child: IconButton(
                      icon: const Icon(
                        Icons.camera,
                        color: Colors.white,
                        size: 40,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(
                            context, RouteGenerator.qrscannerscreenRoute);
                      },
                    ),
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: brownColor),
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
