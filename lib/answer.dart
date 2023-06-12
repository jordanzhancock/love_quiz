import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback onPressed;
  final String answerText;

  const Answer(this.onPressed, this.answerText);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(answerText),
    );
  }
}
