import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function quizHandler;
  Result({this.totalScore, this.quizHandler});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            totalScore.toString(),
            style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
          ),
          RaisedButton(
              color: Colors.red,
              child: Text(
                'RESTART',
                style: TextStyle(fontSize: 20),
              ),
              onPressed: quizHandler),
        ],
      ),
    );
  }
}
