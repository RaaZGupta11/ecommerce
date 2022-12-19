import 'package:ecommerce/screens/shoes_shoppers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cart extends StatelessWidget {
  final String? nameA;

  const Cart({super.key, this.nameA});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(

        // children: [
        //   Container(
        //     height: 200,
        //     color: Colors.red,
        //   )
        // ],
        children: [
          Container(
            height: 350,
            width: double.maxFinite,
            // color: Colors.red,

            child: Stack(children: [
              Positioned(
                  left: 5,
                  child: Container(
                    child: Image(image: AssetImage("images/adidas.png")),
                  )),
              Positioned(
                  left: 25,
                  top: 20,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.yellow),
                    height: 50,
                    width: 50,
                    child: Column(
                      children: [
                        Icon(
                          Icons.arrow_back,
                          size: 50,
                        )
                      ],
                    ),
                  )),
              Positioned(
                  left: 340,
                  top: 20,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.yellow),
                    height: 50,
                    width: 50,
                    child: Column(
                      children: [
                        Icon(
                          Icons.share,
                          size: 50,
                        )
                      ],
                    ),
                  )),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 250),
                  child: Text(nameA!,
                    style: GoogleFonts.lato(
                        fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 245, top: 10),
                  child: Text(
                    "Rs. 20000.00",
                    style: GoogleFonts.lato(
                        fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return ShoesShoppers();
                      },
                    ));
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(30)),
                height: 60,
                width: 200,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Text(
                        "Add to Cart",
                        style: GoogleFonts.lato(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Text(
              "More Details",
              style:
                  GoogleFonts.lato(fontSize: 19, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Container(
              height: 200,
              width: double.maxFinite,
              // color: Colors.red,
              child: Column(
                children: [
                  Text(
                    "Gear up with the latest collections from adidas Originals, Running, Football, Training. With over 20,000+ products, you will never run out of choice. Grab your favorites now. Secure Payments. 100% Original Products. Gear up with adidas.",
                    style: GoogleFonts.lato(fontSize: 20, color: Colors.grey),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
