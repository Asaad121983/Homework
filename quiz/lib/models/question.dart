// question.dart
class Question {
  final String text;
  final List<String> options;
  final List<int> correctAnswer;
  final bool multiSelect;

  Question({
    required this.text,
    required this.options,
    required this.correctAnswer,
    this.multiSelect = false,
  });
}

