// result_dialog.dart
import 'package:flutter/material.dart';

class ResultDialog extends StatelessWidget {
  final int correctAnswers;
  final int totalQuestions;

  const ResultDialog({
    super.key,
    required this.correctAnswers,
    required this.totalQuestions,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Quiz Results"),
      content: Text(
        "You got $correctAnswers out of $totalQuestions correct!",
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
            Navigator.pop(context); 
          },
          child: Text("OK"),
        ),
      ],
    );
  }
}
