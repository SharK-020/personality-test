import 'package:flutter/material.dart';
import 'package:personality_test/quiz.dart';
import 'package:personality_test/result.dart';

void main() {
  return runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      "questionText": "What is your favourite color?",
      "answers": [
        {"Text": "Black", "Score": 1},
        {"Text": "Red", "Score": 3},
        {"Text": "Green", "Score": 6},
        {"Text": "White", "Score": 10}
      ],
    },
    {
      "questionText": "What is your favourite animal?",
      "answers": [
        {"Text": "Snake", "Score": 1},
        {"Text": "Lion", "Score": 3},
        {"Text": "Elephant", "Score": 6},
        {"Text": "Rabbit", "Score": 10}
      ],
    },
    {
      "questionText": "Dark Theme or White Theme",
      "answers": [
        {"Text": "White", "Score": 1},
        {"Text": "Dark", "Score": 10},
      ],
    },
  ];
  int _questionIndex = 0;
  int _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Personality Test"),
        centerTitle: true,
      ),
      body: _questionIndex < _questions.length
          ? Quiz(_questions, _questionIndex, _answerQuestion)
          : Result(_totalScore, _resetQuiz),
    );
  }
}
