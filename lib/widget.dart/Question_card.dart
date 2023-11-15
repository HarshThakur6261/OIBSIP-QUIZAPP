import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:quiz_app/Model.dart/flutter_ques_answ_class.dart';
import 'package:quiz_app/widget.dart/Animation.dart';
import 'package:quiz_app/widget.dart/Answer_button.dart';

class Question_card extends StatelessWidget {
  const Question_card({super.key, required this.flutter_question_text, required this.press});

  final Que_Ans_Class flutter_question_text;
  final VoidCallback press;


  @override
  Widget build(BuildContext context) {
    Animation_Que_Controll _controller = Get.put(Animation_Que_Controll(list: null));
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width*0.9,
            margin: EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(195,211,224,200),
            ),
            padding: EdgeInsets.only(top: 20,left: 5,right: 5,bottom: 20),
            child: Text(flutter_question_text.Text,style: GoogleFonts.aBeeZee(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
            ),
              textAlign: TextAlign.center,
          ),
          ),
          Spacer(
            flex: 1,
          ),
          Flexible(
            flex: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                ...flutter_question_text.getSuffled().map((item) {
                  return Answer_Button(text:item, onTap: () {
                    _controller.checkans(flutter_question_text, item);
                  }, index: item,
                  );

                }
                )
      ]
            ),
          ),
          Spacer(),

        ],
      ),
    );
  }
}