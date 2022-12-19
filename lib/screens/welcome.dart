import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Column(
              children: [
                Text(
                  "Welcome!",
                  style: GoogleFonts.lato(
                      fontSize: 44, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Create a new account",
                  style: GoogleFonts.lato(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12, width: 3),
                borderRadius: BorderRadius.circular(14),
              ),
              height: 500,
              width: double.maxFinite,
              child: Stack(children: [
                Positioned(
                    top: 35,
                    left: 30,
                    child: Column(
                      children: [
                        Text(
                          "Name",
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
                    top: 150,
                    left: 30,
                    child: Column(
                      children: [
                        Text(
                          "Email",
                          style: GoogleFonts.lato(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    )),
                Positioned(
                    top: 190,
                    left: 15,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black26, width: 2),
                          borderRadius: BorderRadius.circular(30)),
                      height: 55,
                      width: 340,
                    )),
                Positioned(
                    top: 270,
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
                    top: 315,
                    left: 15,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black26, width: 2),
                          borderRadius: BorderRadius.circular(30)),
                      height: 55,
                      width: 340,
                    )),
                Positioned(
                    top: 410,
                    left: 15,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color.fromARGB(255, 244, 226, 69)),
                      height: 55,
                      width: 340,
                      child: Center(
                        child: Text(
                          "SIGN UP",
                          style: GoogleFonts.lato(
                              color: Colors.red,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ))
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 85),
            child: Row(
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "Sign In",
                  style: TextStyle(fontSize: 16,  color: Color.fromARGB(255, 111, 58, 176), ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
