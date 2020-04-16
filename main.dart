import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyAppWidget());

class MyAppWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppWidgetState();
  }
}

class _MyAppWidgetState extends State<MyAppWidget> {
  final _questions = const [
    {
      'questionText': 'What\'s your fav color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 7},
        {'text': 'Green', 'score': 4},
        {'text': 'White', 'score': 2},
      ],
    },
    {
      'questionText': 'What\'s your fav movie?',
      'answers': [
        {'text': 'Pulp Fiction', 'score': 10},
        {'text': 'Bonnie & Clyde', 'score': 7},
        {'text': 'Revenant', 'score': 4},
      ],
    },
    {
      'questionText': 'What\'s your fav animal?',
      'answers': [
        {'text': 'Fish', 'score': 10},
        {'text': 'Rabbit', 'score': 7},
        {'text': 'Lion', 'score': 4},
        {'text': 'Pig', 'score': 2},
      ],
    }
  ];
  var _questIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: Text('QUIZ APP'),
        ),
        body: _questIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questIndex: _questIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
