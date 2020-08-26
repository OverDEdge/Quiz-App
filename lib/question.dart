import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final int _questionIndex;
  final List<Map<String, Object>> _questionAnswers;

  Question(this._questionIndex, this._questionAnswers);

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
            _questionAnswers[_questionIndex]['question'] as String,
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
