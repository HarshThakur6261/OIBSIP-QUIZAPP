import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:quiz_app/widget.dart/Animation.dart';

class Countdown extends StatelessWidget {
  const  Countdown({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Container(
        width: double.infinity,
        height: 35,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFF3F4768), width: 3),
          borderRadius: BorderRadius.circular(50),
        ),
        child: GetBuilder<Animation_Que_Controll>(
init: Animation_Que_Controll(list: null),
          builder: (controller) {
            return Stack(
              children: [
                LayoutBuilder(builder: (context, constraints) {
                return Container(
                  width: constraints.maxWidth*controller.animation?.value,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors:[Colors.blue.shade600,Colors.blue.shade900,Colors.indigo.shade900] ,begin: Alignment.centerLeft,end: Alignment.centerRight),
                  borderRadius: BorderRadius.circular(50),
                    )
                );
              },


                ),
      ]
            );
          }
        ),
      ),
    );
  }
}