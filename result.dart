import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 16) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 20) {
      resultText = 'You are so bad!';
    } else {
      resultText = 'You are ... strange?';
    }
    return '$resultText | Score : $resultScore';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.yellow),
          ),
          FlatButton(
            child: Text(
              'Restart Quiz!',
            ),
            color: Colors.blue,
            textColor: Colors.yellow,
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
