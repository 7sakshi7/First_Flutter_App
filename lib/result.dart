import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 30) {
      resultText = 'You are awesome and innocent';
    } else if (resultScore <= 34) {
      resultText = 'Pretty likeable';
    } else if (resultScore <= 37) {
      resultText = 'You are strange';
    } else
      resultText = 'You are more strange and hard to understand';

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
              onPressed: resetHandler,
              child: Text(
                'Restart Quiz',
                style: TextStyle(color: Colors.blueAccent),
              ))
        ],
      ),
    );
  }
}
