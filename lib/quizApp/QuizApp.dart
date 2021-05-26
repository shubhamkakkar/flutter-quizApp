import 'package:flutter/material.dart';
import 'package:quiz_app/components/answerButton/AnswerButton.dart';

import 'package:quiz_app/components/question/Querstion.dart';

class _QuizAppState extends State<QuizApp> {
  var _questionIndex = 0;
  final questions = [
    'What\'s your favorite color?',
    'What\'s your favorite animal?',
  ];
  void _onPressAnswerHandler(int index) {
    setState(() {
      _questionIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      body: Column(
        children: [
          Question(questions[_questionIndex]),
          AnswerButton('Answer 1', () => _onPressAnswerHandler(0)),
          AnswerButton('Answer 2', () => _onPressAnswerHandler(1)),
        ],
      ),
    ));
  }
}

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizAppState();
  }
}
