import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_time/answerButton.dart';
import 'package:quiz_time/models/questions.dart';

class QuestionsPage extends StatefulWidget {
  const QuestionsPage({super.key, required this.onSelectAnswer});

  final Function(String answer) onSelectAnswer;

  @override
  State<QuestionsPage> createState() => _QuestionsPageState();
}

class _QuestionsPageState extends State<QuestionsPage> {
  var currindex = 0;

  void nextQuestion(String selectedAnswer) {
    setState(() {
      widget.onSelectAnswer(selectedAnswer);
      currindex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currindex];

    return SizedBox(
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 130,
            ),

            //questions text
            Text(
              currentQuestion.text,
              style: GoogleFonts.quicksand(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),

            ...currentQuestion.shuffledAnswer().map((answer) {
              return Answerbutton(answer, () {
                nextQuestion(answer);
              });
            })
          ],
        ),
      ),
    );
  }
}
