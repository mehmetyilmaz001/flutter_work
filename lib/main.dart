import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _onAnswerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
      {'questionText': 'What\'s your favourite color?', 'answers': ['Black', 'Red', 'Green']},
      {'questionText': 'Whats\'s your favourite animal?', 'answers': ['Cat', 'Dog', 'Bird']},
    ];

    return (MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Workout App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]['questionText']),

            ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
              return Answer(_onAnswerQuestion, answer);
            }).toList(),
          ],
        ),
      ),
    ));
  }
}
