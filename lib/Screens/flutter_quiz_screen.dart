

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/Data.dart/maths_ques_answ_list.dart';

import 'package:quiz_app/widget.dart/Animation.dart';
import 'package:quiz_app/widget.dart/Question_card.dart';
import 'package:quiz_app/widget.dart/countdown.dart';


class Flutter_Quiz_Screen extends StatefulWidget {
   Flutter_Quiz_Screen({super.key,required this.list});

var list ;


  @override
  State<Flutter_Quiz_Screen> createState() => _Flutter_Quiz_ScreenState();
}

class _Flutter_Quiz_ScreenState extends State<Flutter_Quiz_Screen> {

  @override
  Widget build(BuildContext context) {
    Animation_Que_Controll _questionController = Get.put(Animation_Que_Controll(list: widget.list ));
    return  Scaffold(
      backgroundColor:Color(0xFF000231),
      body: SafeArea(
        child: Column(
        children: [
           Countdown(),
          Expanded(child: PageView.builder(
            physics: NeverScrollableScrollPhysics(),
            controller: _questionController.pageController,
            onPageChanged: _questionController.updatequenum,
            itemCount: _questionController.flutter_que_ans_list_animation.length,
            itemBuilder: (context, index) => Question_card(flutter_question_text:_questionController.flutter_que_ans_list_animation[index], press: () {},),)),


        ],
        ),
      ),

    );
  }
}
