import 'package:flutter/material.dart';
import 'package:quiz/models/question_manager.dart';
import 'package:quiz/styles/app_colors.dart';
import 'package:quiz/widgets/question_option.dart';
import 'package:quiz/widgets/question_progress.dart';
import 'package:quiz/widgets/result_dialog.dart';
import 'package:quiz/models/question.dart';

class QuestionView extends StatefulWidget {
  final List<Question> questions;

  const QuestionView({super.key, required this.questions});

  @override
  State<QuestionView> createState() => QuestionViewState();
}

class QuestionViewState extends State<QuestionView> {
  //late QuestionManager _questionManager;
  late final QuestionManager questionManager = QuestionManager(questions: widget.questions);  

  @override
  // void initState() {
  //   super.initState();
  //   _questionManager = QuestionManager(questions: widget.questions);
  // }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = widget.questions[questionManager.currentIndex];

    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuestionProgress(
              current: questionManager.currentIndex + 1,
              total: widget.questions.length,
            ),
            SizedBox(height: 24),
            Text(
              currentQuestion.text,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            SizedBox(height: 24),
            ...List.generate(currentQuestion.options.length, (index) {
              final isSelected = questionManager.answers[questionManager.currentIndex].contains(index);
              return QuestionOption(
                text: currentQuestion.options[index],
                selected: isSelected,
                onTap: () => setState(() {
                  questionManager.updateAnswer(index);
                }),
              );
            }),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //if (questionManager.currentIndex > 0)
                  ElevatedButton(
                    onPressed: () => setState(() => questionManager.previousQuestion()),
                    child: Row(
                    children: [Icon(Icons.arrow_back), Text('Back')]),
                  ),
                ElevatedButton(
                  onPressed: () {
                    if (questionManager.currentIndex < widget.questions.length - 1) {
                      setState(() => questionManager.nextQuestion());
                    } else {
                      final correctAnswers = questionManager.calculateCorrectAnswers();
                      showDialog(
                        context: context,
                        builder: (context) => ResultDialog(
                          correctAnswers: correctAnswers,
                          totalQuestions: widget.questions.length,
                        ),
                      );
                    }
                  },
                  child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,

                  children: [Text('Next'), Icon(Icons.arrow_forward)]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
