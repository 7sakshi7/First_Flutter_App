import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  void _answerQustion(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print('Answer Choosen');
    // if (_questionIndex < questions.length) {
    //   print('We do have more questions');
    // }
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _questions = const [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': [
          {'text': 'Black', 'score': 10},
          {'text': 'Red', 'score': 8},
          {'text': 'Green', 'score': 9},
          {'text': 'White', 'score': 7},
        ],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': [
          {'text': 'Dog', 'score': 7},
          {'text': 'Giraff', 'score': 8},
          {'text': 'Elephant', 'score': 9},
          {'text': 'Rabbit', 'score': 10},
        ],
      },
      {
        'questionText': 'What\'s your favorite Coding Language?',
        'answers': [
          {'text': 'C++', 'score': 8},
          {'text': 'Javascript', 'score': 7},
          {'text': 'Python', 'score': 9},
          {'text': 'Flutter', 'score': 10},
        ],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQustion: _answerQustion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
