import "package:flutter/material.dart";
import "../../utils/utils_barrel.dart";
import "../../common_components/commoncomp_barrel.dart";
import "../../routes/routes.dart";
import "../../screens/screens_barrel.dart";
import "package:google_fonts/google_fonts.dart";

class BookingInfoScreen extends StatefulWidget {
  const BookingInfoScreen({Key? key}) : super(key: key);

  @override
  _BookingInfoScreenState createState() => _BookingInfoScreenState();
}

class _BookingInfoScreenState extends State<BookingInfoScreen> {
  late final TextEditingController _phonenumController;
  late final TextEditingController _carnumController;
  late final _formKey;

  @override
  void initState() {
    super.initState();
    _phonenumController = TextEditingController();
    _carnumController = TextEditingController();
    _formKey = GlobalKey<FormState>();
  }

  @override
  void dispose() {
    _phonenumController.dispose();
    _carnumController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: brown50,
      appBar: AppBar(
        centerTitle: true,
        elevation: 2,
        iconTheme: const IconThemeData().copyWith(
          color: Colors.white,
        ),
        backgroundColor: brownColor,
        title: Text("Enter Booking Details", style: GoogleFonts.lora()),
        actions: const [],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: screenSize.width,
            height: screenSize.height,
            child: Container(
              decoration: common_bg_image,
              child: Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 7),
                  height: screenSize.height * 0.55,
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
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InputField(
                          size: screenSize,
                          controller: this._phonenumController,
                          hint: "Phone Number",
                          inputType: TextInputType.number,
                        ),
                        SizedBox(
                          height: screenSize.height * 0.045,
                        ),
                        InputField(
                          size: screenSize,
                          controller: this._carnumController,
                          hint: "Car Number",
                          inputType: TextInputType.text,
                        ),
                        SizedBox(
                          height: screenSize.height * 0.045,
                        ),
                        SizedBox(
                          width: screenSize.width * 0.3,
                          child: SubmitBtn(
                              size: screenSize,
                              onPress: () {
                                HomeScreen.carNum = _carnumController.text;
                                HomeScreen.gotCarNum = true;
                                Navigator.pushNamed(context,
                                    RouteGenerator.validationscreenRoute);
                              }),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
