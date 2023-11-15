import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Quiz_Container extends StatelessWidget {
   const Quiz_Container({super.key,required this.onTap,required this.imagePath,required this.text});

  final void Function() onTap;
  final String imagePath;
  final text;
  @override
  Widget build(BuildContext context) {
    return  Flexible(
      fit: FlexFit.loose,
      child: InkWell(onTap: onTap,
      child: Container(
      height: 200,
      width: 150,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey),
      child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
      Image.asset('${imagePath}',width: 130,fit: BoxFit.fill,),

      Text("${text}",style: GoogleFonts.aBeeZee(
      fontWeight: FontWeight.bold,
      fontSize: 20,
      color: Colors.white,
      ),)
      ],
      )


      ),
      ),
    );
  }
}
