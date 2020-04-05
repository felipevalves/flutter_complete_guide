import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function _answerQuestion;
  final String answerText;

  Answer(this._answerQuestion, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: _answerQuestion,
      ),
    );
  }
}
