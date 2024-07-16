import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_time/models/questions.dart';
import 'package:quiz_time/summary/summary_details.dart';

class resultScreen extends StatelessWidget {
  resultScreen({this.onRestart, required this.chosenAnswers, super.key});

  final List<String> chosenAnswers;
  final void Function()? onRestart;

  List<Map<String, Object>> answerSummary() {
    List<Map<String, Object>> summary = [];
    for (int i = 0; i < questions.length; i++) {
      summary.add({
        'question_index': i + 1,
        'question': questions[i].text,
        'chosen_ans': chosenAnswers[i],
        'correct_ans': questions[i].correctAns,
      });
    }

    return summary;
  }

  @override
  Widget build(context) {
    final summmaryData = answerSummary();
    final correctnoAns = summmaryData.where((data) {
      return data['chosen_ans'] == data['correct_ans'];
    }).length;
    final totalnoques = questions.length;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Your Score : $correctnoAns / $totalnoques',
            style: GoogleFonts.lato(
              color: Colors.black,
              fontSize: 24,

            ),
            textAlign: TextAlign.center,
          ),
          SummaryDetails(summary: answerSummary()),
          ElevatedButton.icon(
            onPressed: onRestart,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 243, 118, 25),
            ),
            icon: const Icon(CupertinoIcons.restart),
            label: const Text(
              'Restart Quiz',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
