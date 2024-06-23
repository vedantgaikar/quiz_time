import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Quiz Time',
          style: TextStyle(fontSize: 28),
        ),
        backgroundColor: const Color.fromARGB(255, 243, 180, 124),
      ),
      backgroundColor: const Color.fromARGB(255, 253, 232, 211),
      body: Center(
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
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 243, 118, 25),
              ),
              child: const Text(
                'Start Quiz',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
