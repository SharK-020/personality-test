import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      child: Text(
        questionText,
        style: TextStyle(
          fontSize: 20,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
