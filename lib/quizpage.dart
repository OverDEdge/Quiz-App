import 'package:flutter/material.dart';
import 'package:quizzler/quizbrain.dart';
import 'package:quizzler/scorekeeper.dart';

import 'button.dart';
import "./scorekeeper.dart";
import './result.dart';
import './quizbrain.dart';
import './question.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  final double _answerToScorePadding = 25.0, _scoreAreaHeight = 30.0;
  final QuizBrain quizBrain = QuizBrain();
  final ScoreKeeper scoreKeeper = ScoreKeeper();

  int questionIndex = 0, numberOfCorrectAnswers = 0;

  void _addScore(bool answer) {
    /*
    Method to go to the next question in the quiz and update player score
    */
    setState(() {
      quizBrain.nextQuestion(); // Go to next question

      if (answer) {
        numberOfCorrectAnswers += 1;
      }

      scoreKeeper.addScore(answer);
    });
  }

  void _restartQuiz() {
    /*
    Method to run when restarting the quiz to reset parameters.
    */
    setState(() {
      quizBrain.restartQuiz();
      scoreKeeper.resetScores();
      numberOfCorrectAnswers = 0; // Reset the results
    });
  }

  @override
  Widget build(BuildContext context) {
    return quizBrain.notEndOfQuiz()
        ? Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Question(
                quizBrain.getQuestionText(),
                quizBrain.getAnswer(),
              ),
              Button(
                'True',
                Colors.green,
                () => _addScore(quizBrain.getAnswer() == true),
              ),
              Button(
                'False',
                Colors.red,
                () => _addScore(quizBrain.getAnswer() == false),
              ),
              SizedBox(
                height: _answerToScorePadding,
              ),
              SizedBox(
                height: _scoreAreaHeight,
                child: Wrap(
                  children: scoreKeeper.getCurrentScores(),
                ),
              ),
            ],
          )
        : Result(
            scoreKeeper.getNumberOfCorrectAnswers(),
            scoreKeeper.getNumberOfScores(),
            _restartQuiz,
            scoreKeeper.getCurrentScores(),
          );
  }
}
