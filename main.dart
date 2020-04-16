import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyAppWidget());

class MyAppWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppWidgetState();
  }
}

class _MyAppWidgetState extends State<MyAppWidget> {
  var _questIndex = 0;

  void _answerQuestion() {
    setState(() {
      if (_questIndex == 2) {
        _questIndex = 0;
      } else {
        _questIndex += 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your fav color?',
        'answers': ['Black', 'Red', 'Green', 'White'],
      },
      {
        'questionText': 'What\'s your fav movie?',
        'answers': ['Harry Potter', 'Kill Bill', 'Pulp Fiction'],
      },
      {
        'questionText': 'What\'s your fav taste alike?',
        'answers': ['Fish', 'Meat', 'Vegetables', 'Fruit'],
      }
    ];

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: Text('QUIZ APP'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questIndex]['questionText'],
            ),
            ...(questions[_questIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
