import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_time/models/questions.dart';
import 'package:quiz_time/pages/questionsPage.dart';
import 'package:quiz_time/pages/resultScreen.dart';
import 'home.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'home-screen';
  List<String> answers = [];// to pass the summary to the result screen
  int answerCount = 0;

  //to change the state to the question screen
  void changeState() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  //to change to result screen once all ques are answered
  void chooseAnswer(String selectedAnswer) {
    answers.add(selectedAnswer);
    answerCount++;

    if (answerCount == questions.length) {
      setState(() {
        activeScreen = 'result-screen';
        answerCount= 0;
      });
    }
  }

  //to restart the quiz after the result screen
  void restartQuiz() {
    setState(() {
      activeScreen = 'home-screen';
      answers= [];

    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = Home(changeState);
    if (activeScreen == 'question-screen') {
      screenWidget = QuestionsPage(
        onSelectAnswer: chooseAnswer,
      );
    }
    if (activeScreen == 'result-screen') {
      screenWidget = resultScreen(
        onRestart: restartQuiz,
        chosenAnswers: answers,
      );

    }
    if (activeScreen == 'home-screen') {
      screenWidget = Home(changeState);
    }
    return MaterialApp(
      title: 'Quiz Time',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Quiz Time',
            style: GoogleFonts.quicksand(
              color: Colors.black,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 243, 180, 124),
        ),
        body: Container(
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 253, 232, 211)),
          child: screenWidget,
        ),
      ),
    );
  }
}
