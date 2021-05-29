import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final VoidCallback onPressAnswerHandler;
  final answer;

  AnswerButton({required this.answer, required this.onPressAnswerHandler});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        child: Text(answer['label']),
        onPressed: this.onPressAnswerHandler,
      ),
    );
  }
}
