import 'package:ecommerce/screens/shoppers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 140, right: 60),
                child: Text(
                  "Welcome Back!",
                  style: GoogleFonts.lato(fontSize: 44),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50),
                child: Text(
                  "Login with Username & Password",
                  style: GoogleFonts.lato(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12, width: 3),
                borderRadius: BorderRadius.circular(14),
              ),
              height: 400,
              width: double.maxFinite,
              child: Stack(children: [
                Positioned(
                    top: 35,
                    left: 30,
                    child: Column(
                      children: [
                        Text(
                          "Username",
                          style: GoogleFonts.lato(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    )),
                Positioned(
                    top: 70,
                    left: 15,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black26, width: 2),
                          borderRadius: BorderRadius.circular(30)),
                      height: 55,
                      width: 340,
                    )),
                Positioned(
                    top: 160,
                    left: 30,
                    child: Column(
                      children: [
                        Text(
                          "Password",
                          style: GoogleFonts.lato(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    )),
                Positioned(
                    top: 200,
                    left: 15,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black26, width: 2),
                          borderRadius: BorderRadius.circular(30)),
                      height: 55,
                      width: 340,
                    )),
                Positioned(
                    top: 290,
                    left: 15,
                    child: InkWell(
                      onTap: (() {
                        Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Shoppers();
                      },
                    ));
                      }),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color.fromARGB(255, 244, 226, 69)),
                        height: 55,
                        width: 340,
                        child: Center(
                          child: Text(
                            "SIGN IN",
                            style: GoogleFonts.lato(
                                color: Colors.red,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ))
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, top: 30),
            child: Row(
              children: [
                Text(
                  "Create a new account?",
                  style: GoogleFonts.lato(fontSize: 20),
                ),
                Text(
                  "Sign Up",
                  style: GoogleFonts.lato(
                      color: Color.fromARGB(255, 111, 58, 176), fontSize: 20),
                ),
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}
