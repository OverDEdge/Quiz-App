import 'package:flutter/material.dart';

class ScoreKeeper extends StatelessWidget {
  final List<Widget> _currentScore;

  ScoreKeeper(this._currentScore);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: _currentScore,
    );
  }
}
