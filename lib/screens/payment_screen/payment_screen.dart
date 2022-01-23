import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import '../../routes/routes.dart';
import '../../common_components/bg_image.dart';
import "../../utils/utils_barrel.dart";
import "../screens_barrel.dart";

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.done),
            onPressed: () {
              Navigator.popUntil(
                  context, ModalRoute.withName(RouteGenerator.homescreenRoute));
            },
          ),
        ],
        centerTitle: true,
        backgroundColor: brownColor,
        title: Text(
          "Payment",
          style: GoogleFonts.lora(
            textStyle: const TextStyle(color: Colors.white),
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
                Text(
                  "Total: 120 RS",
                  style: GoogleFonts.lora(
                    textStyle: TextStyle(
                      color: brownColor,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  "2 Mins X 20",
                  style: GoogleFonts.lora(
                    textStyle: TextStyle(
                      color: brownColor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
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
