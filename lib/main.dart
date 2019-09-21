import 'package:flutter/material.dart';

void main() => runApp(MyApp());




class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>{
  var _questionIndex = 0;
  
  void onAnswerQuestion() 
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
            Text(questions.elementAt(_questionIndex)),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: () => onAnswerQuestion(),
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => onAnswerQuestion(),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () => onAnswerQuestion(),
            ),
          ],
        ),
      ),
    ));
  }
}
