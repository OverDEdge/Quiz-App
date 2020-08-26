import 'package:flutter/material.dart';
import 'package:quizzler/scorekeeper.dart';

import 'button.dart';
import "./question.dart";
import "./scorekeeper.dart";
import './answer.dart';
import './result.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  final double _answerToScorePadding = 20.0;

  final List<Map<String, Object>> _questionAnswers = [
    {
      'question': 'You can lead a cow down stairs but not up stairs.',
      'answer': false,
    },
    {
      'question': 'Approximately one quarter of human bones are in the feet.',
      'answer': true,
    },
    {
      'question': 'A slug\'s blood is green.',
      'answer': true,
    }
  ];

  List<Widget> scoreKeeper = [];
  int questionIndex = 0, numberOfCorrectAnswers = 0;

  void _addScore(bool answer) {
    setState(() {
      questionIndex += 1; // Go to next question
      if (answer) {
        numberOfCorrectAnswers += 1;
      }
      scoreKeeper.add(Answer(answer));
    });
  }

  void _restartQuiz() {
    setState(() {
      questionIndex = 0; // Reset question index
      scoreKeeper = [];
      numberOfCorrectAnswers = 0; // Reset the results
    });
  }

  @override
  Widget build(BuildContext context) {
    return questionIndex < _questionAnswers.length
        ? Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Question(questionIndex, _questionAnswers),
              Button(
                'True',
                Colors.green,
                () => _addScore(
                    _questionAnswers[questionIndex]['answer'] == true),
              ),
              Button(
                'False',
                Colors.red,
                () => _addScore(
                    _questionAnswers[questionIndex]['answer'] == false),
              ),
              SizedBox(
                height: _answerToScorePadding,
              ),
              ScoreKeeper(scoreKeeper),
            ],
          )
        : Result(numberOfCorrectAnswers, scoreKeeper.length, _restartQuiz);
  }
}
