import 'package:flutter/material.dart';

import './quizpage.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  final double _quizBodyPadding = 10.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal[900],
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: _quizBodyPadding),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
