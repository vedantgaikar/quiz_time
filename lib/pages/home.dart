import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home(this.startQuiz, {super.key});
  void Function()? startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 80),
          Image.asset(
            'lib/assets/qiuz_trn.png',
            height: 350,
            width: 330,
          ),
          const SizedBox(height: 30),
          ElevatedButton.icon(
            onPressed: startQuiz,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 243, 118, 25),
            ),
            icon: const Icon(Icons.arrow_forward),
            label: const Text(
              'Start Quiz',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
