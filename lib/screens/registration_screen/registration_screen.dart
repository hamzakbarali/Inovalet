import "package:flutter/material.dart";
import "../../utils/utils_barrel.dart";
import "../../common_components/commoncomp_barrel.dart";
import "../../routes/routes.dart";

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  late final TextEditingController _passwordController;
  late final TextEditingController _nameController;
  late final TextEditingController _emailController;
  late final TextEditingController _phonenumController;
  late final TextEditingController _carnumController;
  late final _formKey;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _nameController = TextEditingController();
    _phonenumController = TextEditingController();
    _carnumController = TextEditingController();
    _formKey = GlobalKey<FormState>();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
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
        elevation: 2,
        iconTheme: const IconThemeData().copyWith(
          color: Colors.white,
        ),
        backgroundColor: brownColor,
        title: Row(children: [
          Text("Signup", style: commonAppBarTitleStyle),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Icon(Icons.directions_car))
        ]),
        actions: const [],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: screenSize.width,
            height: screenSize.height,
            child: Container(
              decoration: signupscreen_bg_image,
              child: Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 7),
                  height: screenSize.height * 0.80,
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
                          controller: this._nameController,
                          hint: "Name",
                          inputType: TextInputType.name,
                        ),
                        SizedBox(
                          height: screenSize.height * 0.045,
                        ),
                        InputField(
                          size: screenSize,
                          controller: this._emailController,
                          hint: "Email",
                          inputType: TextInputType.emailAddress,
                        ),
                        SizedBox(
                          height: screenSize.height * 0.045,
                        ),
                        InputField(
                          size: screenSize,
                          controller: this._passwordController,
                          hint: "Password",
                          obscure: true,
                        ),
                        SizedBox(
                          height: screenSize.height * 0.045,
                        ),
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
                            onPress: () => createUser(
                                _nameController.text,
                                _emailController.text,
                                _passwordController.text,
                                _phonenumController.text,
                                _carnumController.text,
                                RouteGenerator.loginscreenRoute,
                                context),
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
