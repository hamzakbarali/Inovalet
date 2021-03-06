import 'package:animated_text_kit/animated_text_kit.dart';
import "package:flutter/material.dart";
import 'package:inovalet/utils/utils_barrel.dart';
import "./widgets/widgets_barrel.dart";
import "../../routes/routes.dart";
import "../../common_components/commoncomp_barrel.dart";

class DefaultScreen extends StatelessWidget {
  const DefaultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: brown50,
      body: SafeArea(
        child: Container(
          decoration: common_bg_image,
          height: screenSize.height,
          width: screenSize.width,
          child: Center(
            child: LayoutBuilder(
              builder: (_, constraints) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnimatedTextKit(repeatForever: true, animatedTexts: [
                      TypewriterAnimatedText(
                        "Inovalet",
                        speed: const Duration(milliseconds: 70),
                        textStyle:
                            defaultscreenHeadingTextTheme.bodyText1?.copyWith(
                          fontSize: constraints.maxWidth * 0.13,
                          color: brownColor,
                        ),
                      )
                    ]),
                    SizedBox(
                      height: constraints.maxHeight * 0.03,
                    ),
                    Btn(
                        text: "Login",
                        routeName: RouteGenerator.loginscreenRoute,
                        size: screenSize),
                    SizedBox(
                      height: constraints.maxHeight * 0.03,
                    ),
                    Btn(
                        text: "Signup",
                        routeName: RouteGenerator.registrationscreenRoute,
                        size: screenSize),
                    SizedBox(
                      height: constraints.maxHeight * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ContactUsBtn(
                          text: "Contact Us",
                          routeName: RouteGenerator.contactusscreenRoute,
                          size: screenSize,
                        ),
                        SizedBox(
                          width: screenSize.width * 0.1,
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
