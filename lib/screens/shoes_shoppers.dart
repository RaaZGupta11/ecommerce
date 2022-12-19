import 'package:ecommerce/screens/sign_out.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShoesShoppers extends StatelessWidget {
  const ShoesShoppers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
          decoration: BoxDecoration(
              // color: Colors.red,
              border: Border.all(color: Colors.black12, width: 2)),
          height: 100,
          width: double.maxFinite,
          child: Center(
              child: Text("SHOPPERS", style: GoogleFonts.lato(fontSize: 48))),
        ),
        Padding(
          padding: const EdgeInsets.all(28.0),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black12, width: 2),
                // color: Colors.red,
                borderRadius: BorderRadius.circular(17)),
            height: 125,
            child: Stack(
              children: [
                Positioned(
                    child: ClipRRect(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(17),
                        bottomLeft: Radius.circular(17),
                      ),
                      // color: Colors.grey
                    ),
                    height: 125,
                    width: 120,
                    child: Image.asset(
                      "images/shoes.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                )),
                Positioned(
                    left: 120,
                    child: Container(
                      height: 125,
                      width: 240,
                      // color: Colors.yellow,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 9),
                            child: Text(
                              "Adidas Shoe",
                              style: GoogleFonts.lato(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 7),
                            child: Text(
                              "Qty: 1",
                              style: GoogleFonts.lato(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 14),
                            child: Text(
                              "Rs. 20000.00",
                              style: GoogleFonts.lato(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(28.0),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black12, width: 2),
                // color: Colors.red,
                borderRadius: BorderRadius.circular(17)),
            height: 125,
            child: Stack(
              children: [
                Positioned(
                    child: ClipRRect(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(17),
                        bottomLeft: Radius.circular(17),
                      ),
                      // color: Colors.grey
                    ),
                    height: 125,
                    width: 120,
                    child: Image.asset(
                      "images/shoes.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                )),
                Positioned(
                    left: 120,
                    child: Container(
                      height: 125,
                      width: 240,
                      // color: Colors.yellow,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 9),
                            child: Text(
                              "Adidas Shoe",
                              style: GoogleFonts.lato(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 7),
                            child: Text(
                              "Qty: 1",
                              style: GoogleFonts.lato(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 14),
                            child: Text(
                              "Rs. 20000.00",
                              style: GoogleFonts.lato(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Total :",
                style:
                    GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "Rs.40000.00",
                style:
                    GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Padding(
            padding: const EdgeInsets.all(40.0),
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return SignOut();
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
                          "CHECKOUT",
                          style: GoogleFonts.lato(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),

          Padding(
         padding: const EdgeInsets.all(16.0),
         child: Padding(
           padding: const EdgeInsets.only(top: 65),
           child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black12, width: 2)
            ),
            height: 80,
            child : Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(Icons.home, size: 50,  ),
                Icon(Icons.man, size: 50,),
                Icon(Icons.shop, size: 50, color: Colors.yellow,)
              ],
            ) 
           ),
         ),
       )    

        
      ]),
    );
  }
}
