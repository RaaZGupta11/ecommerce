import 'package:ecommerce/screens/shoppers.dart';
import 'package:ecommerce/screens/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 90),
                child: Container(
                  height: 200,
                  width: double.maxFinite,
                  // color: Colors.red,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "WELCOME TO SHOPPERS",
                          style: GoogleFonts.lato(fontSize: 60),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Image.asset("images/shop.png"),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return SignIn();
                    },
                  ));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.red, borderRadius: BorderRadius.circular(12)),
                  height: 35,
                  width: 80,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 11, top: 2),
                    child: Text(
                      "SignIn",
                      style: GoogleFonts.lato(color: Colors.white,
                      fontSize: 20),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
