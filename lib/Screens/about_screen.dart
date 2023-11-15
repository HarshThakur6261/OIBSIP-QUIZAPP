import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/Screens/Start_screen.dart';

class About_Screen extends StatelessWidget {
   About_Screen({super.key});

  var name =TextEditingController();

  @override
  Widget build(BuildContext context) {

    void _hidekeyboard(){
  final currentnode = FocusScope.of(context);
  if(!currentnode.hasPrimaryFocus){
    currentnode.unfocus();
  }
    }
    return Scaffold(
      backgroundColor:
      Color(0XFF0B112C),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Let's Play Quiz",style: GoogleFonts.aBeeZee(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 50,
          )),

              Text("Enter your name",style: GoogleFonts.aBeeZee(
                color: Colors.white,

                fontSize: 30,
              )),

               Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: TextField(
                  controller: name,
                  style: TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    counterStyle: TextStyle(color: Colors.white),
                    hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),
                    filled: true,
                    fillColor: Color(0xFF1C2341),
                    hintText: "Full Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),

                    ),
                  ),
                ),
              ),
              SizedBox(height: 5,),
              OutlinedButton.icon(
                    onPressed:(){
                      _hidekeyboard();

                   Get.to(() => Start_Screen(name: name.text));
                    },
                    style: OutlinedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                    label:  Text("Start Quiz",style: GoogleFonts.aBeeZee(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),),
                    icon: Icon(Icons.arrow_right_alt,color: Colors.white,),

                  ),

            ],
          ),
        ),
      ),
    );
  }
}
