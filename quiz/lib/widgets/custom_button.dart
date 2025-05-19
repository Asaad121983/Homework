import 'package:flutter/material.dart';
import 'package:quiz/models/question.dart';
import 'package:quiz/styles/app_colors.dart';
import 'package:quiz/styles/app_text_styles.dart';
import 'package:quiz/views/question_view.dart';

// ignore: camel_case_types
class custom_button extends StatelessWidget {
  const custom_button({
    super.key,
    required this.questions,
  });

  final List<Question> questions;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => QuestionView(questions: questions),
            ),
          );
        },
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(
            horizontal: 26,
            vertical: 13,
           ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
           ),
          ),
              child: Text(
               'Start Quiz',
                style: AppTextStyles.medium18(
                color: AppColors.primaryColor,
               ), 
              ),
       ),
      );
  }
}
