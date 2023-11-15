import 'package:flutter/material.dart';

class Full_summary extends StatelessWidget {
  const Full_summary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
children:
  summaryData.map((data){
    return Row(children :[
      Text(((data['question_index'] as int) +1).toString()),
      Expanded(
        child: Column(
          children: [
            Text(data['question'] as String),
            const SizedBox(
              height: 5,
            ),
            Text(data['user_answer'] as String),
            Text(data['correct_answer'] as String),
          ],
        ),
      ),

      ],
    );

    }
    ).toList(),

    );
  }
}
