import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final VoidCallback onPressHandler;
  final String buttonText;

  AnswerButton(this.buttonText, this.onPressHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        child: Text(buttonText),
        onPressed: onPressHandler,
      ),
    );
  }
}
