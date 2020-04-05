import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/question.dart';
import './answer.dart';

class Quiz extends StatelessWidget{

  final questionIndex;
  final Function answerQuestion;
  final List<Map<String, Object>> questions;


  Quiz({@required this.answerQuestion, @required  this.questions, @required  this.questionIndex});

  @override
  Widget build(BuildContext context) {

    return Column(
      children: <Widget>[
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer( () => answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }

}