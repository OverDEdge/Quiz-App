import 'package:flutter/material.dart';

import './answer.dart';

class ScoreKeeper {
  List<Widget> _currentScores = [];
  int _numberOfCorrectAnswers = 0;

  void addScore(answer) {
    /*
    Method to add a new score to current scores.
    */

    _currentScores.add(Answer(answer));
    if (answer) {
      _numberOfCorrectAnswers++;
    }
  }

  List<Widget> getCurrentScores() {
    /*
    Method to get the current scores of the player
    */
    return _currentScores;
  }

  int getNumberOfScores() {
    /*
    Method to get total number of scores in quiz.
    */
    return _currentScores.length;
  }

  int getNumberOfCorrectAnswers() {
    /*
    Method to get the number of correct answers
    */
    return _numberOfCorrectAnswers;
  }

  void resetScores() {
    /*
    Method to reset scores and correct answers when restarting quiz
    */
    _currentScores = [];
    _numberOfCorrectAnswers = 0;
  }
}
