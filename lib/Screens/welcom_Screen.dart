import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/Screens/about_screen.dart';

class Welcome_Screen extends StatelessWidget {
  const Welcome_Screen({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
      // Colors.indigo,
      const Color(0XFF0B112C),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/QUIZ_LOGO.png',
                width: 350,
              ),
              const SizedBox(height: 5,),
              OutlinedButton.icon(
                onPressed:(){
               Get.to(() => About_Screen());
                },
                style: OutlinedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                label:  Text("Start Quiz",style: GoogleFonts.aBeeZee(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),),
                icon: const Icon(Icons.arrow_right_alt,color: Colors.white,),

              ),

            ],
          ),
        ),
      ),
    );
  }
}
