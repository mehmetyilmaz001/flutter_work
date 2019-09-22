import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You dit it!';

    if (resultScore == 20) {
      resultText = 'You are awsome and innocent!';
    } else if (resultScore <= 10) {
      resultText = 'Pretty likeable!';
    } else {
      resultText = 'You are bad !';
    }
    return 'Your score is ' + resultScore.toString() + '. ' + resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultPhrase,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
        FlatButton(child: Text('Restart quiz!'), onPressed: resetHandler, textColor: Colors.green,)
      ],
    ));
  }
}
