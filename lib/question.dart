import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  final bool answer;

  Question(this.questionText, this.answer);

  final double _questionPadding = 10.0, _questionFontSize = 25.0;
  final int _questionFlex = 5;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: _questionFlex,
      child: Padding(
        padding: EdgeInsets.all(_questionPadding),
        child: Center(
          child: Text(
            questionText,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: _questionFontSize,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
