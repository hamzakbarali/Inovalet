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
            icon: const Icon(Icons.payment),
            onPressed: () {
              Navigator.pushNamed(context, RouteGenerator.paymentscreenRoute);
            },
          ),
        ],
        title: Text(
          "Inovalet",
          style: GoogleFonts.lora(
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
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Your ",
                          style: GoogleFonts.lora(
                            textStyle: TextStyle(
                              fontSize: 22,
                              color: brownColor,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        WidgetSpan(
                          child: Icon(Icons.directions_car,
                              color: brownShade, size: 35),
                        ),
                        TextSpan(
                          text: " Is Waiting For You",
                          style: GoogleFonts.lora(
                            textStyle: TextStyle(
                              fontSize: 22,
                              color: brownColor,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ],
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
