import "package:flutter/material.dart";
import '../../common_components/bg_image.dart';
import "../../utils/utils_barrel.dart";
import "../../data/data_barrel.dart";
import "package:collection/collection.dart";
import "package:google_fonts/google_fonts.dart";
import "../../routes/routes.dart";
import 'package:intl/intl.dart';
import "./widgets/widgets_barrel.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final args = ModalRoute.of(context)!.settings.arguments;
    final user = users.firstWhereOrNull((element) {
      return element.id == args;
    });
    final date = DateFormat('EE, d MMM, yyyy');

    return Scaffold(
      appBar: AppBar(
        title: Text(date.format(DateTime.now()), style: GoogleFonts.lobster()),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: brownColor,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Navigator.pushReplacementNamed(
                  context, RouteGenerator.loginscreenRoute);
            },
          ),
        ],
      ),
      body: SafeArea(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Container(
            decoration: common_bg_image,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: brownLightShade,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: brown50,
                          offset: const Offset(-5, -5),
                          spreadRadius: 4,
                          blurRadius: 15),
                      BoxShadow(
                          color: brown50,
                          offset: const Offset(5, 5),
                          spreadRadius: 4,
                          blurRadius: 15),
                    ],
                  ),
                  margin: const EdgeInsets.only(top: 25, left: 10, right: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 25,
                      ),
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
                        radius: 50,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.directions_car,
                            color: brownColor,
                          ),
                          Text(
                            ": ${user.carNum}",
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
                      const SizedBox(
                        height: 25,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Center(
                  child: Column(
                    children: [
                      ValetBtn(
                          text: "Book Valet?",
                          onPress: () {
                            Navigator.pushNamed(context,
                                RouteGenerator.bookValetMapScreenRoute);
                          }),
                      const SizedBox(
                        height: 15,
                      ),
                      ValetBtn(text: "Call Valet?", onPress: () {}),
                    ],
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
