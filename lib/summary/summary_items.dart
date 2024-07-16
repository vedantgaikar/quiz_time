import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_time/summary/question_identifier.dart';

class SummaryItems extends StatelessWidget {
  SummaryItems({required this.data, super.key});

  final Map<String, Object> data;

  @override
  Widget build(BuildContext context) {
    bool isCorrect() {
      return data['chosen_ans'] == data['correct_ans'];
    }

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(children: [
        QuestionIdentifier(
          identifier: (data['question_index']).toString(),
          isCorrect: isCorrect(),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data['question'].toString(),
                style: GoogleFonts.poppins(
                  fontSize: 15,
                ),
              ),
              Text(
                data['chosen_ans'].toString(),
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.black45,
                ),
              ),
              Text(
                data['correct_ans'].toString(),
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.green[600],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
