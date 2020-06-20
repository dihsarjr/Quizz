import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {

    final List<Map<String, Object>> questions;
    final int questionIndex;
    final Function myAns;

    Quiz({this.questions, this.questionIndex, this.myAns,});

  @override
  Widget build(BuildContext context) {
    return Column(
                children: [
                  Question(questions[questionIndex]['questionText']),
                  ...(questions[questionIndex]['questionAnswers']
                          as List<Map<String, Object>>)
                      .map((questionAnswers) {
                    return Answers( () => myAns(questionAnswers['score']), questionAnswers['text']);
                  }).toList()
                ],
              );
  }
}