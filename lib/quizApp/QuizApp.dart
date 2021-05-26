import 'package:flutter/material.dart';

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
    print(index);
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
          ElevatedButton(
              onPressed: () => _onPressAnswerHandler(0),
              child: Text('Answer 1')),
          ElevatedButton(
              onPressed: () => _onPressAnswerHandler(1),
              child: Text('Answer 2')),
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
