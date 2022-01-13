import "package:flutter/material.dart";
import '../../common_components/commoncomp_barrel.dart';
import "../../utils/utils_barrel.dart";

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
        title: Text("Contact Us", style: commonAppBarTitleStyle),
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
                  SizedBox(
                    width: size.width * 0.70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 50,
                          child: Icon(
                            Icons.email,
                            color: Colors.grey.shade200,
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Text(
                          "inovalet@gmail.com",
                          style: TextStyle(
                            color: Colors.grey.shade200,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 50,
                          child: Icon(
                            Icons.phone,
                            color: Colors.grey.shade200,
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Text(
                          "+92 334 3451077",
                          style: TextStyle(
                            color: Colors.grey.shade200,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 50,
                          child: Icon(
                            Icons.web,
                            color: Colors.grey.shade200,
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Text(
                          "www.inovalet.com",
                          style: TextStyle(
                            color: Colors.grey.shade200,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 50,
                          child: Icon(
                            Icons.add_road,
                            color: Colors.grey.shade200,
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Text(
                          "DHA, Karachi",
                          style: TextStyle(
                            color: Colors.grey.shade200,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
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
