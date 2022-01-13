import "package:flutter/material.dart";
import "../../utils/utils_barrel.dart";
import "../../common_components/commoncomp_barrel.dart";

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  late final _formKey;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _formKey = GlobalKey<FormState>();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: brown50,
      appBar: AppBar(
        elevation: 2,
        iconTheme: const IconThemeData().copyWith(
          color: Colors.white,
        ),
        backgroundColor: brownColor,
        title: Row(children: [
          Text("Login", style: commonAppBarTitleStyle),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Icon(Icons.directions_car))
        ]),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: SizedBox(
            width: screenSize.width,
            height: screenSize.height,
            child: Container(
              decoration: common_bg_image,
              child: Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 7),
                  height: screenSize.height * 0.50,
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
                            controller: _emailController,
                            hint: "Email",
                            inputType: TextInputType.emailAddress),
                        SizedBox(
                          height: screenSize.height * 0.045,
                        ),
                        InputField(
                          size: screenSize,
                          controller: _passwordController,
                          hint: "Password",
                          obscure: true,
                        ),
                        SizedBox(
                          height: screenSize.height * 0.045,
                        ),
                        SizedBox(
                          width: screenSize.width * 0.3,
                          child: SubmitBtn(
                            size: screenSize,
                          ),
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
