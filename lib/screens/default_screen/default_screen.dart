import 'package:animated_text_kit/animated_text_kit.dart';
import "package:flutter/material.dart";
import "../../utils/themes.dart";
import "./widgets/widgets_barrel.dart";

class DefaultScreen extends StatelessWidget {
  const DefaultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          height: screenSize.height,
          width: screenSize.width,
          child: Center(
            child: LayoutBuilder(
              builder: (_, constraints) {
                return Column(
                  children: [
                    AnimatedTextKit(repeatForever: true, animatedTexts: [
                      TypewriterAnimatedText(
                        "Inovalet",
                        textStyle:
                            defaultscreenHeadingTextTheme.bodyText1?.copyWith(
                          fontSize: constraints.maxWidth * 0.5,
                        ),
                      )
                    ]),
                    SizedBox(
                      height: constraints.maxHeight * 0.1,
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
