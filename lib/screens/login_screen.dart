import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:loginpage/utils/my_routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  final _validationKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        reverse: true,
        child: SafeArea(
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Image.asset(
                      'assets/images/LoginPage.png',
                      scale: 4.5,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 35.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            "Hello! $name",
                            textAlign: TextAlign.left,
                            style: GoogleFonts.lato(
                              color: HexColor('#061C30'),
                              // Reference --> https://www.color-hex.com/color/061c30
                              fontSize: 50.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "let's introduce",
                          // textAlign: TextAlign.left,
                          style: GoogleFonts.lato(
                            color: HexColor('#9ba4ac'),
                            // Reference --> https://www.color-hex.com/color/061c30
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Form(
                      key: _validationKey,
                      child: Column(
                        children: [
                          TextFormField(
                            validator: (name) {
                              if (name!.isEmpty) {
                                return "Please enter you Name!";
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                                labelText: 'Name', hintText: 'Your Name'),
                            onChanged: (value) {
                              name = value;
                              setState(() {});
                            },
                          ),
                          TextFormField(
                            validator: (usernm) {
                              if (usernm!.isEmpty) {
                                return "Please enter you Username!";
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                                labelText: 'Username', hintText: 'Username'),
                          ),
                          TextFormField(
                            validator: (pswd) {
                              if (pswd!.isEmpty) {
                                return "Please enter Password!";
                              } else if (pswd.length < 8) {
                                return "Password should at least have 8 characters!";
                              }
                              return null;
                            },
                            obscureText: true,
                            autocorrect: false,
                            decoration:
                                const InputDecoration(labelText: 'Password'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 60.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Material(
                    color: Colors.white,
                    child: InkWell(
                      child: Ink(
                        height: 40.0,
                        width: 160.0,
                        child: Center(
                          child: Text(
                            "Sign Up",
                            style: GoogleFonts.lato(
                              color: HexColor('#9ba4ac'),
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    autofocus: true,
                    onPressed: () {
                      if (_validationKey.currentState!.validate()) {
                        Navigator.pushNamed(context, Routes.homeScreen);
                      }
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Log In",
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                        const SizedBox(width: 10.0,),
                        const Icon(Icons.arrow_forward),
                      ],
                    ),
                    // Reference --> https://www.fluttericon.com/
                    style: ElevatedButton.styleFrom(
                        primary: HexColor('#061C30'),
                        minimumSize: const Size(160.0, 40.0),
                        elevation: 8.0,
                        animationDuration: const Duration(seconds: 1)),
                  ),
                ],
              ),
              const SizedBox(
                height: 100.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
