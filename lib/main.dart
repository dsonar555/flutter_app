import 'package:flutter/material.dart';
import 'package:flutter_app/answer.dart';

import './result.dart';
import './quiz.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      'questionText' : 'What\'s your favorite color?',
      'answers' : [
        {'text' : 'Black', 'score' : 10},
        {'text' : 'Orange', 'score' : 4},
        {'text' : 'Blue', 'score' : 3},
        {'text' : 'White', 'score' : 1}
        ]
    },
    {
      'questionText' : 'What\'s your favorite animal?',
      'answers' : [
        {'text' : 'Motu', 'score' : 10},
        {'text' : 'liti', 'score' : 8},
        {'text' : 'madhaviyo', 'score' : 7},
        {'text' : 'poojli', 'score' : 4}
      ]
    },
    {
      'questionText' : 'Who\'s kevin\'s bestie?',
      'answers' : [
        {'text' : 'Jadiyo', 'score' : 5},
        {'text' : 'Maitri', 'score' : 10},
        {'text' : 'Chhotu', 'score' : 2},
        {'text' : 'Poojli', 'score' : 4}
        ]
    },
  ];

  void _answerQuestion(score) {
    setState(() {
      _questionIndex++;
      _totalScore += score;
    });
    if (_questionIndex < _questions.length) {
        print('Question printed.');
    }
    print('Answer Chosen');
  }

  void _resetQuiz (){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
}

  Widget build(BuildContext context) {
    return MaterialApp(
        home : Scaffold(
          appBar : AppBar(
            title: Text('First App'),
            backgroundColor: Colors.black,
          ),
          body: _questionIndex < _questions.length
            ? Quiz(questionIndex:_questionIndex, answerQuestion:_answerQuestion, questions:_questions)
            : Result(_totalScore, _resetQuiz),
        )
    );
  }
}