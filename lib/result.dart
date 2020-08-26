import 'package:flutter/material.dart';

import 'button.dart';

class Result extends StatelessWidget {
  final int _result, _total;
  final Function _restartQuiz;

  Result(this._result, this._total, this._restartQuiz);

  final double _resultPadding = 10.0, _resultFontSize = 25.0;
  final int _resultFlex = 5;
  final Color _buttonColor = Colors.blue;
  final String _buttonText = 'Restart Quiz!';

  String _resultText() {
    if (_result == 0) {
      return 'You didn\'t get a single answer correct. Please try again!';
    } else if (_result == _total) {
      return 'You got ALL the answers correct! Congratulations!';
    } else {
      return 'You got $_result correct answers out of $_total!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: _resultFlex,
          child: Padding(
            padding: EdgeInsets.all(_resultPadding),
            child: Center(
              child: Text(
                _resultText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: _resultFontSize,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Button(
          _buttonText,
          _buttonColor,
          _restartQuiz,
        ),
      ],
    );
  }
}
