import 'package:flutter/material.dart';
import 'package:flutter_app/quiz.dart';
import './result.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _question = [
    {
      'questionText': 'what is your fave color',
      'questionAnswers': [
        {'text': 'red', 'score': 6},
        {'text': 'blue', 'score': 7},
        {'text': 'white', 'score': 10},
        {'text': 'yellow', 'score': 9}
      ],
    },
    {
      'questionText': 'what is your fave mobile brand',
      'questionAnswers': [
        {'text': 'oneplus', 'score': 6},
        {'text': 'apple', 'score': 7},
        {'text': 'samsung', 'score': 10},
        {'text': 'nokia', 'score': 9}
      ],
    },
    {
      'questionText': 'what is your fave bike',
      'questionAnswers': [
        {'text': 'yamaha', 'score': 6},
        {'text': 'bmw', 'score': 7},
        {'text': 'ktm', 'score': 10},
        {'text': 'ducati', 'score': 9}
      ],
    },
    {
      'questionText': 'what is your fave car',
      'questionAnswers': [
        {'text': 'bmw', 'score': 6},
        {'text': 'honda', 'score': 7},
        {'text': 'mustang', 'score': 10},
        {'text': 'mini', 'score': 9}
      ],
    },
    {
      'questionText': 'what is your fave animal',
      'questionAnswers': [
        {'text': 'cat', 'score': 6},
        {'text': 'dog', 'score': 7},
        {'text': 'lion', 'score': 10},
        {'text': 'rabit', 'score': 9}
      ],
    },
  ];
  var _questionIntex = 0;
  var _totalScore = 0;

  void _restratQuiz (){
    setState(() {
      _questionIntex = 0;
      _totalScore = 0;
    });
  }
  

  void _myAns(int score) {
    _totalScore += score;
    setState(() {
      
      _questionIntex = _questionIntex + 1;
    });
    if (_questionIntex < _question.length) {
      print('you have more question');
    } else {
      print('no more question');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "hi how ",
          ),
          centerTitle: true,
        ),
        body: _questionIntex < _question.length
            ? Quiz(
                questions: _question,
                questionIndex: _questionIntex,
                myAns: _myAns,
              )
            : Result(totalScore: _totalScore, quizHandler: _restratQuiz,),
      ),
    );
  }
}
