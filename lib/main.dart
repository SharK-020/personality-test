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
      "answers": ["Black", "Red", "Green", "White"],
    },
    {
      "questionText": "What is your favourite animal?",
      "answers": ["Rabbit", "Snake", "Elephant", "Lion"],
    },
    {
      "questionText": "Dark Theme or White Theme",
      "answers": ["Dark", "White"],
    },
  ];
  int _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
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
          : Result(),
    );
  }
}
