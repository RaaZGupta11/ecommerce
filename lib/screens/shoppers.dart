import 'package:ecommerce/datas/list_map.dart';
import 'package:ecommerce/screens/cart.dart';
import 'package:ecommerce/screens/shoes_shoppers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Shoppers extends StatelessWidget {
  const Shoppers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
           Container(
              decoration: BoxDecoration(
                  // color: Colors.red,
                  border: Border.all(color: Colors.black12, width: 2)),
              height: 100,
              width: double.maxFinite,
              child: Center(
                  child: Text(
                "SHOPPERS",
                style: GoogleFonts.lato(fontSize: 48),
              )),
            ),

          Expanded(
            child: Container(
            
              // color: Colors.indigo,
              child: ListView(
                children: [
                  Wrap(
                    children: List.generate(products.length, (index) => Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: (() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Cart(
                        nameA: products[index]['name'],
                      ),));
                    }),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 2),
                        borderRadius: BorderRadius.circular(10),
                        // color: Colors.red,
                      ),
                      height: 185,
                      width: 185,
                      child: Column(children: [
                        Container(
                          height: 120,
                          width: 130,
                          child: Image.asset(
                        products[index]['image'], 
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 130,
                          // color: Colors.yellow,
                          child: Column(
                            children: [
                              Text(
                                products[index]['name'],
                                style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                products[index]['price'],
                                style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              
                            ],
                          ),
                        )
                      ]),
                    ),
                  ),
                ),
                  )))
                    
                ],
              ),
            ),
            // child: ListView(children: [
             
             
            // //   Padding(
            // //     padding: const EdgeInsets.only(top: 20),
            // //     child: Row(
            // //       mainAxisAlignment: MainAxisAlignment.spaceAround,
            // //       children: [
            // //         InkWell(
            // //           onTap: () {
            // //             Navigator.push(context, MaterialPageRoute(
            // //                 builder: (context) {
            // //                   return Cart();
            // //                 },
            // //               ));
            // //           },
            // //           child: Container(
            // //             decoration: BoxDecoration(
            // //               border: Border.all(width: 2),
            // //               borderRadius: BorderRadius.circular(10),
            // //               // color: Colors.red,
            // //             ),
            // //             height: 200,
            // //             width: 180,
            // //             child: Stack(children: [
            // //               Positioned(
            // //                   child: Container(
            // //                 height: 120,
            // //                 width: 160,
            // //                 child: Image.asset(
            // //                   "images/shoes.png",
            // //                 ),
            // //               )),
            // //               Positioned(
            // //                   top: 115,
            // //                   right: 1,
            // //                   child: Container(
            // //                     height: 60,
            // //                     width: 180,
            // //                     // color: Colors.yellow,
            // //                     child: Column(
            // //                       children: [
            // //                         Text(
            // //                           "Adidas Shoe",
            // //                           style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.bold),
            // //                         ),
            // //                         Text(
            // //                           "Rs 20000.00",
            // //                           style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.bold),
            // //                         ),
            // //                       ],
            // //                     ),
            // //                   ))
            // //             ]),
            // //           ),
            // //         ),
            // //         Container(
            // //           decoration: BoxDecoration(
            // //             border: Border.all(width: 2),
            // //             borderRadius: BorderRadius.circular(10),
            // //             // color: Colors.red,
            // //           ),
            // //           height: 200,
            // //           width: 180,
            // //           child: Stack(children: [
            // //             Positioned(
            // //                 child: Container(
            // //               height: 120,
            // //               width: 160,
            // //               child: Image.asset(
            // //                 "images/watch.png",
            // //               ),
            // //             )),
            // //             Positioned(
            // //                 top: 115,
            // //                 right: 1,
            // //                 child: Container(
            // //                   height: 60,
            // //                   width: 180,
            // //                   // color: Colors.yellow,
            // //                   child: Column(
            // //                     children: [
            // //                       Text(
            // //                         "Adidas Shoe",
            // //                         style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.bold),
            // //                       ),
            // //                       Text(
            // //                         "Rs 20000.00",
            // //                         style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.bold),
            // //                       ),
            // //                     ],
            // //                   ),
            // //                 ))
            // //           ]),
            // //         )
            // //       ],
            // //     ),
            // //   ),
              //  Padding(
              //   padding: const EdgeInsets.only(top: 20),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceAround,
              //     children: [
              //       Container(
              //         decoration: BoxDecoration(
              //           border: Border.all(width: 2),
              //           borderRadius: BorderRadius.circular(10),
              //           // color: Colors.red,
              //         ),
              //         height: 200,
              //         width: 180,
              //         child: Stack(children: [
              //           Positioned(
              //               child: Container(
              //             height: 120,
              //             width: 160,
              //             child: Image.asset(
              //               "images/g.png", 
              //             ),
              //           )),
              //           Positioned(
              //               top: 115,
              //               right: 1,
              //               child: Container(
              //                 height: 60,
              //                 width: 180,
              //                 // color: Colors.yellow,
              //                 child: Column(
              //                   children: [
              //                     Text(
              //                       "Adidas Shoe",
              //                       style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.bold),
              //                     ),
              //                     Text(
              //                       "Rs 20000.00",
              //                       style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.bold),
              //                     ),
              //                   ],
              //                 ),
              //               ))
              //         ]),
              //       ),
            //         Container(
            //           decoration: BoxDecoration(
            //             border: Border.all(width: 2),
            //             borderRadius: BorderRadius.circular(10),
            //             // color: Colors.red,
            //           ),
            //           height: 200,
            //           width: 180,
            //           child: Stack(children: [
            //             Positioned(
            //                 child: Container(
            //               height: 120,
            //               width: 160,
            //               child: Image.asset(
            //                 "images/shoes.png",
            //               ),
            //             )),
            //             Positioned(
            //                 top: 115,
            //                 right: 1,
            //                 child: Container(
            //                   height: 60,
            //                   width: 180,
            //                   // color: Colors.yellow,
            //                   child: Column(
            //                     children: [
            //                       Text(
            //                         "Adidas Shoe",
            //                         style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.bold),
            //                       ),
            //                       Text(
            //                         "Rs 20000.00",
            //                         style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.bold),
            //                       ),
            //                     ],
            //                   ),
            //                 ))
            //           ]),
            //         )
            //       ],
            //     ),
            //   ),
            // //    Padding(
            // //     padding: const EdgeInsets.only(top: 20),
            // //     child: Row(
            // //       mainAxisAlignment: MainAxisAlignment.spaceAround,
            // //       children: [
            // //         Container(
            // //           decoration: BoxDecoration(
            // //             border: Border.all(width: 2),
            // //             borderRadius: BorderRadius.circular(10),
            // //             // color: Colors.red,
            // //           ),
            // //           height: 200,
            // //           width: 180,
            // //           child: Stack(children: [
            // //             Positioned(
            // //                 child: Container(
            // //               height: 120,
            // //               width: 160,
            // //               child: Image.asset(
            // //                 "images/shoes.png",
            // //               ),
            // //             )),
            // //             Positioned(
            // //                 top: 115,
            // //                 right: 1,
            // //                 child: Container(
            // //                   height: 60,
            // //                   width: 180,
            // //                   // color: Colors.yellow,
            // //                   child: Column(
            // //                     children: [
            // //                       Text(
            // //                         "Adidas Shoe",
            // //                         style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.bold),
            // //                       ),
            // //                       Text(
            // //                         "Rs 20000.00",
            // //                         style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.bold),
            // //                       ),
            // //                     ],
            // //                   ),
            // //                 ))
            // //           ]),
            // //         ),
            // //         Container(
            // //           decoration: BoxDecoration(
            // //             border: Border.all(width: 2),
            // //             borderRadius: BorderRadius.circular(10),
            // //             // color: Colors.red,
            // //           ),
            // //           height: 200,
            // //           width: 180,
            // //           child: Stack(children: [
            // //             Positioned(
            // //                 child: Container(
            // //               height: 120,
            // //               width: 160,
            // //               child: Image.asset(
            // //                 "images/shoes.png",
            // //               ),
            // //             )),
            // //             Positioned(
            // //                 top: 115,
            // //                 right: 1,
            // //                 child: Container(
            // //                   height: 60,
            // //                   width: 180,
            // //                   // color: Colors.yellow,
            // //                   child: Column(
            // //                     children: [
            // //                       Text(
            // //                         "Adidas Shoe",
            // //                         style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.bold),
            // //                       ),
            // //                       Text(
            // //                         "Rs 20000.00",
            // //                         style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.bold),
            // //                       ),
            // //                     ],
            // //                   ),
            // //                 ))
            // //           ]),
            // //         )
            // //       ],
            // //     ),
            // //   ),
            // //  Padding(
            // //    padding: const EdgeInsets.all(16.0),
            // //    child: Container(
            // //     decoration: BoxDecoration(
            // //       border: Border.all(color: Colors.black12, width: 2)
            // //     ),
            // //     height: 80,
            // //     child : Row(
            // //       mainAxisAlignment: MainAxisAlignment.spaceAround,
            // //       children: const [
            // //         Icon(Icons.home, size: 40, color: Colors.yellow,),
            // //         Icon(Icons.man, size: 40,),
            // //         Icon(Icons.shop, size: 40,)
            // //       ],
            // //     ) 
            // //    ),
            // //  )    
             
            // ]),
          ),
        ],
      ),
    );
  }
}
