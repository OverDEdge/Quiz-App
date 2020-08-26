import 'package:flutter/material.dart';
import 'package:quizzler/quizbrain.dart';
import 'package:quizzler/scorekeeper.dart';

import 'button.dart';
import "./scorekeeper.dart";
import './answer.dart';
import './result.dart';
import './quizbrain.dart';
import './question.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  final double _answerToScorePadding = 20.0;
  final QuizBrain quizBrain = QuizBrain();

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
    return questionIndex < quizBrain.getNumberOfQuestions()
        ? Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Question(
                quizBrain.getQuestionText(questionIndex),
                quizBrain.getAnswer(questionIndex),
              ),
              Button(
                'True',
                Colors.green,
                () => _addScore(quizBrain.getAnswer(questionIndex) == true),
              ),
              Button(
                'False',
                Colors.red,
                () => _addScore(quizBrain.getAnswer(questionIndex) == false),
              ),
              SizedBox(
                height: _answerToScorePadding,
              ),
              ScoreKeeper(scoreKeeper),
            ],
          )
        : Result(
            numberOfCorrectAnswers,
            scoreKeeper.length,
            _restartQuiz,
            scoreKeeper,
          );
  }
}
