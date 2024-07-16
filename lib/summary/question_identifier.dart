import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
   QuestionIdentifier({ required this.identifier,required this.isCorrect, super.key});
  final String identifier;
  final bool isCorrect;
  @override
  Widget build(BuildContext context) {
     return CircleAvatar(
       backgroundColor: isCorrect? Colors.green[600] : Colors.red,
       child: Text(identifier.toString()),
     );
    // Text(
    //   (data['question_index']).toString(),
    //   style: TextStyle(fontSize: 18),
    // );
  }
}
