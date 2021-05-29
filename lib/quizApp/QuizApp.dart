import 'package:flutter/material.dart';
import 'package:quiz_app/components/answerButton/AnswerButton.dart';

import 'package:quiz_app/components/question/Querstion.dart';

class _QuizAppState extends State<QuizApp> {
  var _questionIndex = 0;
  var _score = 0;
  static const _questions = [
    {
      'question': 'What\'s your favorite color?',
      'answers': [
        {'label': 'red', 'score': 10},
        {'label': 'black', 'score': 0}
      ],
    },
    {
      'question': 'What\'s your favorite animal?',
      'answers': [
        {'label': 'dog', 'score': 10},
        {'label': 'cat', 'score': 0},
        {'label': 'bird', 'score': 50},
      ],
    },
  ];

  void _onPressAnswerHandler(int answerScore) {
    setState(() {
      _questionIndex += 1;
      _score += answerScore;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      body: _questionIndex > _questions.length
          ? Column(
              children: [
                Question(
                    questionText:
                        _questions[_questionIndex]['question'] as String),
                ...(_questions[_questionIndex]['answers'] as List)
                    .map((answer) => (AnswerButton(
                        answer: answer,
                        onPressAnswerHandler: () =>
                            _onPressAnswerHandler(answer['score']))))
                    .toList()
              ],
            )
          : Column(children: [
              Center(
                child: Text('your quiz is complete!'),
              )
            ]),
    ));
  }
}

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizAppState();
  }
}
