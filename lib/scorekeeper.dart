import 'package:flutter/material.dart';

import './answer.dart';

class ScoreKeeper {
  List<Widget> _currentScores = [];
  int _numberOfCorrectAnswers = 0;

  void addScore(answer) {
    _currentScores.add(Answer(answer));
    if (answer) {
      _numberOfCorrectAnswers++;
    }
  }

  List<Widget> getCurrentScores() {
    return _currentScores;
  }

  int getNumberOfScores() {
    return _currentScores.length;
  }

  int getNumberOfCorrectAnswers() {
    return _numberOfCorrectAnswers;
  }

  void resetScores() {
    _currentScores = [];
  }
}
