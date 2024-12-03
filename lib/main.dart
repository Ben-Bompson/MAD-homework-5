import 'package:flutter/material.dart';
import 'package:hw05/quiz_screen.dart';
import 'package:hw05/setup_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trivia Quiz App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SetupScreen(),
      routes: {
        '/quiz' : (context) => QuizScreen(),
      }
    );
  }
}
