class Task {
  String title;
  DateTime createdAt;
  bool isDone;

  Task({
    required this.title,
    required this.createdAt,
    this.isDone = false,
  });
}
