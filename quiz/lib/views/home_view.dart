import 'package:flutter/material.dart';
import 'package:quiz/constants/assets.dart';
import 'package:quiz/models/question.dart';
import 'package:quiz/styles/app_colors.dart';
import 'package:quiz/styles/app_text_styles.dart';
import 'package:quiz/widgets/custom_button.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final List<Question> questions = [
    Question(
      text:
          'How would you describe your level of satisfaction with the healthcare system?',
      options: ['Strongly satisfied', 'Satisfied', 'Neutral', 'Not satisfied'], correctAnswer: [0],
    ),
    Question(
      text: 'What vitamins do you take?',
      options: ['Vitamin D3', 'Vitamin B', 'Zinc', 'Magnesium'],
      multiSelect: true, correctAnswer: [0, 1],
    ),
    Question(
      text: 'What is your favorite color ?',
      options: ['AAAAAA', 'BBBBBBB', 'CCCCCCCC'], correctAnswer: [2],
      
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(Assets.assetsImagesGredinet),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 50),
                  Text('Good morning,', style: AppTextStyles.medium18()),

                  SizedBox(height: 8),
                  Text('New topic is waiting', style: AppTextStyles.medium24()),
                  Expanded(child: SizedBox()),
                  custom_button(questions: questions),

                 
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

