// question_manager.dart
import 'package:flutter_svg/svg.dart';
import 'package:quiz/models/question.dart';
import 'package:collection/collection.dart';

class QuestionManager {
  final List<Question> questions;
  late List<List<int>> answers;  
  late List<SvgPicture> svgImages;
  int currentIndex = 0;

  QuestionManager({required this.questions}) {
    answers = List.generate(questions.length, (_) => []);
   
  }

  void updateAnswer(int optionIndex) {
    final question = questions[currentIndex];
    if (question.multiSelect) {
      if (answers[currentIndex].contains(optionIndex)) {
        answers[currentIndex].remove(optionIndex);
      } else {
        answers[currentIndex].add(optionIndex);
      }
    } else {
      answers[currentIndex] = [optionIndex];
    }
  }

  bool isAnswerCorrect(int questionIndex) {
    final question = questions[questionIndex];
    return ListEquality().equals(answers[questionIndex], question.correctAnswer);
  }

  int calculateCorrectAnswers() {
    int correctAnswers = 0;
    for (int i = 0; i < questions.length; i++) {
      if (isAnswerCorrect(i)) {
        correctAnswers++;
      }
    }
    return correctAnswers;
  }

  void nextQuestion() {
    if (currentIndex < questions.length - 1) {
      currentIndex++;
    }
  }

  void previousQuestion() {
    if (currentIndex > 0) {
      currentIndex--;
    }
  }
}
