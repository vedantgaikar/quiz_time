import 'package:flutter/material.dart';
import 'package:quiz_time/pages/questionsPage.dart';
import 'home.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen; // ? becoz it is null initially
@override
  void initState() {
  activeScreen = Home(changeState);
    super.initState();
  }
  void changeState() {
    setState(
      () {
        activeScreen = const QuestionsPage();
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz Time',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Quiz Time',
            style: TextStyle(fontSize: 28),
          ),
          backgroundColor: const Color.fromARGB(255, 243, 180, 124),
        ),
        body: Container(
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 253, 232, 211)),
          child: activeScreen,
        ),
      ),
    );
  }
}
