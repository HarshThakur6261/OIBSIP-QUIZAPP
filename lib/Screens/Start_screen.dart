import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/Data.dart/chemistry_ques_answ_list..dart';
import 'package:quiz_app/Data.dart/flutter_ques_answ_list.dart';
import 'package:quiz_app/Data.dart/maths_ques_answ_list.dart';
import 'package:quiz_app/Data.dart/sports_ques_answ_list.dart';

import '../widget.dart/Quiz_container.dart';
import 'flutter_quiz_screen.dart';



class Start_Screen extends StatefulWidget {
   Start_Screen({super.key,required this.name});

  var name;
  static var Harsh;




  @override
  State<Start_Screen> createState() => _Start_ScreenState();
}
class _Start_ScreenState extends State<Start_Screen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hi,""${widget.name}",style: GoogleFonts.aBeeZee(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),),
                      Text("Lets make this day productive",style: GoogleFonts.aBeeZee(
                        color: Colors.white,
                        fontSize: 13,
                      ),),
                    ],
                  ),
                  CircleAvatar(
                    maxRadius: 30,
                    child: Image.asset('assets/user.webp'),)
                ],
              ),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Quiz_Container(onTap: (){
                    setState(() {
                    Start_Screen.Harsh = widget.name;
                    Get.to(() => Flutter_Quiz_Screen(list: sports_que_ans_list,));
                   });



                  },imagePath: 'assets/sports.png',text: 'Sports'),

                  Quiz_Container(onTap: (){
                      setState(() {
                     Start_Screen.Harsh = widget.name;
                       });
                     Get.to(() => Flutter_Quiz_Screen(list: maths_ques_answ_list,));


                  },imagePath: 'assets/calculating.png',text: 'Maths')
                ],
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Quiz_Container(onTap: (){
                        setState(() {
                      Start_Screen.Harsh = widget.name;
                         });
                     Get.to(() => Flutter_Quiz_Screen(list: chemistry_que_ans_list
                     ));


                  },imagePath: 'assets/chemistry.png',text: 'Chemistry'),

                  Quiz_Container(onTap:(
                      ) {
                    setState(() {
                      Start_Screen.Harsh = widget.name;
                    });
                    Get.to(() => Flutter_Quiz_Screen(list: flutter_que_ans_list,));
                  },
                      imagePath: 'assets/flutter.png',text: 'Flutter')
                ],
              ),




            ],
          ),
        ),
      ),

    );
  }
}
