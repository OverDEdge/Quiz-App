import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String _buttonText;
  final Color _bgColor;
  final Function _addScore;

  final double _buttonCurve = 10.0,
      _buttonShadowBlurRadius = 7.0,
      _buttonShadowHorizontalOffset = 0.0,
      _buttonShadowVerticalOffset = 0.0,
      _buttonShadowSpreadRadius = 5.0,
      _buttonShadowOpacity = 0.5,
      _buttonPadding = 15.0,
      _buttonTextFontSize = 20.0;

  Button(this._buttonText, this._bgColor, this._addScore);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(_buttonPadding),
        child: Container(
          child: FlatButton(
            color: _bgColor,
            child: Text(
              _buttonText,
              style: TextStyle(
                fontSize: _buttonTextFontSize,
                color: Colors.white,
              ),
            ),
            onPressed: _addScore,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(_buttonCurve),
            ),
          ),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(_buttonShadowOpacity),
                spreadRadius: _buttonShadowSpreadRadius,
                blurRadius: _buttonShadowBlurRadius,
                offset: Offset(_buttonShadowHorizontalOffset,
                    _buttonShadowVerticalOffset), // changes position of shadow
              ),
            ],
          ),
        ),
      ),
    );
  }
}
