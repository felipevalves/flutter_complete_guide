import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function resetHandler;
  final int score;

  Result(this.score, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You did it!!';

    if (score <= 8) {
      resultText = 'You are awesome and innocent!!!';
    } else if (score <= 12) {
      resultText = 'Pretty likeable!';
    } else if (score <= 16) {
      resultText = 'You are... Strange?!';
    } else {
      resultText = 'You are so bad!!!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz!'),
            textColor: Colors.blue,
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
