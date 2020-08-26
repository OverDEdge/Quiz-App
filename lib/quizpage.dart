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
      'question': 'Some cats are actually allergic to humans.',
      'answer': true,
    },
    {
      'question': 'You can lead a cow down stairs but not up stairs.',
      'answer': false,
    },
    {
      'question': 'Approximately one quarter of human bones are in the feet.',
      'answer': true,
    },
    {
      'question': 'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".',
      'answer': true,
    },
    {
      'question': 'A slug\'s blood is green.',
      'answer': true,
    },
    {
      'question':
          'No piece of square dry paper can be folded in half more than 7 times.',
      'answer': false,
    },
    {
      'question': 'It is illegal to pee in the Ocean in Portugal.',
      'answer': true,
    },
    {
      'question':
          'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
      'answer': true,
    },
    {
      'question':
          'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
      'answer': false,
    },
    {
      'question': 'The heaviest substance in the world is Gold.',
      'answer': false,
    },
    {
      'question':
          'The total surface area of two human lungs is approximately 70 square metres.',
      'answer': true,
    },
    {
      'question':
          'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
      'answer': true,
    },
    {
      'question': 'The highest mountain in the world is named Kilimanjaro.',
      'answer': false,
    },
    {
      'question': 'Google was originally called \"Backrub\".',
      'answer': true,
    },
    {
      'question':
          'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
      'answer': true,
    },
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
        : Result(
            numberOfCorrectAnswers,
            scoreKeeper.length,
            _restartQuiz,
            scoreKeeper,
          );
  }
}
