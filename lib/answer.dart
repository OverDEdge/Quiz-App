import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final bool answer;

  Answer(this.answer);

  @override
  Widget build(BuildContext context) {
    /*
    Returns a green check Icon if answer is correct
    else returns a red cross
    */
    return answer
        ? Icon(
            Icons.check,
            color: Colors.green,
          )
        : Icon(
            Icons.close,
            color: Colors.red,
          );
  }
}
