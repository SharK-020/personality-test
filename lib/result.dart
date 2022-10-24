import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback reset;
  const Result(this.resultScore,this.reset, {super.key});

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = "You are bad!";
    } else if (resultScore <= 12) {
      resultText = "You are ... strange!";
    } else if (resultScore <= 16) {
      resultText = "Pretty likeable!";
    } else {
      resultText = "You are awesome and innocent!";
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
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: reset,
            child: Text("Reset Quiz"),
          )
        ],
      ),
    );
  }
}
