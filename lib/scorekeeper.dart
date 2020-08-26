import 'package:flutter/material.dart';

class ScoreKeeper extends StatelessWidget {
  final List<Widget> currentScore;

  ScoreKeeper(this.currentScore);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: currentScore,
    );
  }
}
