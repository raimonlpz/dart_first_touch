import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(right: 100, left: 100),
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.yellow,
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
