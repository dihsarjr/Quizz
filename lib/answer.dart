import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final Function handler;
  String answersQ;
  Answers(this.handler, this.answersQ);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child: RaisedButton(
          color: Colors.red,
          child: Text(
            answersQ,
            style: TextStyle(fontSize: 20),
          ),
          onPressed: handler),
    );
  }
}
