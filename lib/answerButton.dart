import 'package:flutter/material.dart';

class Answerbutton extends StatelessWidget {
  Answerbutton(this.text, this.onTap, {super.key});

  final String text;
  final void Function()? onTap;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 243, 118, 25),),
      child: Text(
        text,
        style: const TextStyle(fontSize: 20, color: Colors.white),
        textAlign: TextAlign.center,

        ),
    );
  }
}
