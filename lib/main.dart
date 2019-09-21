import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());


class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  var _questionIndex = 0;
  
  void _onAnswerQuestion() 
  {
    setState(() {
      _questionIndex = _questionIndex + 1;  
    });
    
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
  
    var questions = [
      'What\'s your favourite color?',
      'Whats\'s your favourite animal?',
    ];

    return (MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Workout App'),
        ),
        body: Column(
          children: [
            Question(questions.elementAt(_questionIndex)),
            
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: () => _onAnswerQuestion(),
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => _onAnswerQuestion(),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () => _onAnswerQuestion(),
            ),
          ],
        ),
      ),
    ));
  }
}
