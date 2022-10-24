import 'package:flutter/material.dart';
import 'questions.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;
  const Quiz(this.questions, this.questionIndex, this.answerQuestion,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]["questionText"] as String),
        ...(questions[questionIndex]["answers"] as List<Map<String,Object>>).map((answer) {
          return Answer(()=>answerQuestion(answer["Score"] as int), answer["Text"] as String);
        }).toList()
      ],
    );
  }
}
