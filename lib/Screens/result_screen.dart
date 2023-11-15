import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/Data.dart/maths_ques_answ_list.dart';
import 'package:quiz_app/Screens/Start_screen.dart';
import 'package:quiz_app/widget.dart/Animation.dart';
import 'package:restart_app/restart_app.dart';


class Result_Screen extends StatefulWidget {
  const Result_Screen({super.key});

  @override
  State<Result_Screen> createState() => _Result_ScreenState();
}

class _Result_ScreenState extends State<Result_Screen> {
  @override
  Widget build(BuildContext context) {
    Animation_Que_Controll qncontroller = Get.put(Animation_Que_Controll(list: maths_ques_answ_list));
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body:Center(
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Column(
             mainAxisSize: MainAxisSize.min,
              children: [
                const CircleAvatar(
                  radius: 100,
                  backgroundColor: Colors.amber,
                  foregroundImage:AssetImage('assets/user.webp')
                  ),
                Spacer(flex: 1,),
                Text(Start_Screen.Harsh,style: GoogleFonts.aBeeZee(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30)),
                Spacer(flex:1,),
                Flexible(
                  flex: 10,
                  fit: FlexFit.loose,
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blueGrey),
                    child: Column(
                      children: [
                        const SizedBox(height: 20,),
                        Text("Your Score", style: GoogleFonts.aBeeZee(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30)),
                       const SizedBox(height: 20,),
                        Text("${qncontroller.numCorrectAns*10}/${qncontroller.flutter_que_ans_list_animation.length*10}",style: GoogleFonts.aBeeZee(color: Colors.white,fontWeight: FontWeight.bold,fontSize:30),)

                      ],
                    ),
                  ),
                ),
                Spacer(),
                OutlinedButton(
                  onPressed:(){
                    Restart.restartApp();
                  },
                  style: OutlinedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),foregroundColor: Colors.blueGrey),
                    child: Text("Restart Start Quiz",style: GoogleFonts.aBeeZee(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),),


                ),
            ]
        ),
          )


          ),
        )
      );

  }
}
