import 'package:flutter/material.dart';
import 'package:quiz_copy/question.dart';
import 'package:quiz_copy/quiz_data.dart';
import 'package:quiz_copy/result.dart';

import 'answer.dart';

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int _questionIndex = 0;
  int _score = 0;

  void _answerQuestion(bool isCorrect) {
    if (isCorrect) {
      _score++;
    }

    setState(() {
      _questionIndex++;
    });
  }

  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_questionIndex >= QuizData.questions.length) {
      return Result(_score, resetQuiz);
    }

    return Column(
      children: [
        const SizedBox(
          height: 25.0,
        ),
        Question(QuizData.questions[_questionIndex]['questionText'].toString()),
        ...(QuizData.questions[_questionIndex]['answers']
                as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
            () => _answerQuestion(answer['isCorrect'] as bool),
            answer['text'].toString(),
          );
        }).toList(),
      ],
    );
  }
}
