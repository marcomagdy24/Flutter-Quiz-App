import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;

  Result(this.totalScore, this.resetQuiz);

  String get resultPhrase {
    String resultText;
    if (totalScore <= 8) {
      resultText = "You are Awesome and Inocent!";
    } else if (totalScore <= 12) {
      resultText = "Pretty likeable!";
    } else if (totalScore <= 16) {
      resultText = "You are ... Strange";
    } else {
      resultText = "You are Bad!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          FlatButton(
            onPressed: resetQuiz,
            child: Text("Restart Quiz!!"),
            textColor: Colors.blue[600],
          )
        ],
      ),
    );
  }
}
