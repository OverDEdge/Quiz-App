class QuizBrain {
  var _questionIndex = 0;
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

  String getQuestionText() {
    /*
    Method for getting the question matching a certain index
    */
    return _questionAnswers[_questionIndex]['question'];
  }

  bool getAnswer() {
    /*
    Method for getting the answer matching a certain index
    */
    return _questionAnswers[_questionIndex]['answer'];
  }

  void nextQuestion() {
    _questionIndex++;
  }

  bool notEndOfQuiz() {
    return _questionIndex < _questionAnswers.length;
  }

  void restartQuiz() {
    _questionIndex = 0;
  }
}
