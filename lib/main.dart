import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';

//void main(){
//  runApp(MyApp());
//}
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

// _ indica privado
class _MyAppState extends State<MyApp> {

  final questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [{'text': 'Black', 'score': 10}, {'text': 'Red', 'score': 7}, {'text': 'Green', 'score': 4}, {'text': 'Blue', 'score': 1} ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [{'text': 'Snake', 'score': 10}, {'text': 'Lion', 'score': 7}, {'text': 'Elephant', 'score': 4}, {'text': 'Rabbit', 'score': 1} ]
    },
    {
      'questionText': 'What\'s your favorite song?',
      'answers': [{'text': 'ACDC', 'score': 10}, {'text': 'Millencolin', 'score': 7}, {'text': 'Raimundus', 'score': 4}, {'text': 'Pepper', 'score': 1} ]
    }
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuix() {

    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });


  }

  void _answerQuestion(int score) {

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print('Answer Chosen $_questionIndex');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: (_questionIndex < questions.length)
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: questions,
                questionIndex: _questionIndex)
            : Result(_totalScore, _resetQuix),
      ),
    );
  }
}
