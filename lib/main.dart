import 'package:flutter/material.dart';
import 'package:quiz_time/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Quiz Time',
        debugShowCheckedModeBanner: false,
        // theme: ThemeData(primarySwatch: Colors.),
        home: Home(),
    );
  }
}





