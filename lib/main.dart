import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/result.dart';
import 'quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var i;
  int _totalScore = 0;
  final _questions = const [
    {
      "questionText": "What\'s your favourite Color?",
      "answers": [
        {"text": "Black", "score": 10},
        {"text": "Red", "score": 7},
        {"text": "Green", "score": 5},
        {"text": "White", "score": 1}
      ],
    },
    {
      "questionText": "What\'s your favourite Animal?",
      "answers": [
        {"text": "Rabbit", "score": 10},
        {"text": "Lion", "score": 7},
        {"text": "Elephant", "score": 5},
        {"text": "Giraffe", "score": 1}
      ],
    },
    {
      "questionText": "What\'s your favourite Instructor?",
      "answers": [
        {"text": "Marco", "score": 10},
        {"text": "Magdy", "score": 7},
        {"text": "Green", "score": 5},
        {"text": "Thanks", "score": 1}
      ],
    },
  ];

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    if (_questionIndex < _questions.length) {
      setState(() {
        _questionIndex += 1;
      });
      print(_questionIndex);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hey"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
