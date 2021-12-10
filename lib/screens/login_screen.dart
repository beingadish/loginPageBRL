import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
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
                              color: HexColor(
                                  '#061C30'), // Reference --> https://www.color-hex.com/color/061c30
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
                            color: HexColor(
                                '#9ba4ac'), // Reference --> https://www.color-hex.com/color/061c30
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'Name', hintText: 'Your Name'),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'Username', hintText: 'Username'),
                    ),
                    TextFormField(
                      obscureText: true,
                      autocorrect: false,
                      decoration: const InputDecoration(labelText: 'Password'),
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
                  InkWell(
                    child: AnimatedContainer(
                      height: 40.0,
                      width: 160.0,
                      duration: const Duration(seconds: 1),
                      child: const Icon(Icons.arrow_back),
                    ),
                  ),
                  ElevatedButton(
                    autofocus: true,
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.homeScreen);
                    },
                    child: const Icon(Icons
                        .arrow_forward), // Reference --> https://www.fluttericon.com/
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
