import 'package:ecommerce/screens/welcome.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignOut extends StatelessWidget {
  const SignOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
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
            padding: const EdgeInsets.only(left: 95, top: 140),
            child: Text(
              "Hello Sllva",
              style: GoogleFonts.lato(fontSize: 48, fontWeight: FontWeight.bold),
            ),
          ),
          

          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Padding(
              padding: const EdgeInsets.only(top: 60),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Welcome();
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
                          "SIGN OUT",
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
           padding: const EdgeInsets.only(top: 260),
           child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black12, width: 2)
            ),
            height: 80,
            child : Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(Icons.home, size: 50,  ),
                Icon(Icons.man, size: 50, color: Colors.yellow,),
                Icon(Icons.shop, size: 50, )
              ],
            ) 
           ),
         ),
       )    
          
        ],
      ),
    );
  }
}
