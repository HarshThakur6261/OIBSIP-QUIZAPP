import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/widget.dart/Animation.dart';

class Answer_Button extends StatelessWidget {
  const Answer_Button({super.key,required this.text,
    required this.onTap, required this.index,
  });

  final String text;
  final void Function() onTap;
  final String index ;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<Animation_Que_Controll>(
      init: Animation_Que_Controll(list: null),
      builder: (qnController) {
        Color getTheRightColor(){
          if(qnController.isanswered){
            if(index == qnController.correctAns){
              return Colors.green;
            }
            else if(index == qnController.selectedAns && qnController.selectedAns != qnController.correctAns){
              return Colors.red;
            }
          } return
            const Color.fromRGBO(195,211,224,100);
          }

        return SizedBox(
         width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(left:15,right:15),
            child: ElevatedButton(onPressed:onTap,
                    style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    alignment: Alignment.centerLeft,
                   side:  BorderSide(width:3,color: Colors.black ),
                        backgroundColor: getTheRightColor(),
                    ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10,bottom: 10),
                  child: Text(text,style: GoogleFonts.aBeeZee(
                    fontSize: 20,
                    color: Colors.white,
                  ),),
                )),
          ),

        );

      }
    );
  }
}
