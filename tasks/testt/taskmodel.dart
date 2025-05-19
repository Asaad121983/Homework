class Task {
  String id;
  String title;
  DateTime createdAt;
  bool isDone;

  Task({
    required this.id,
    required this.title,
    required this.createdAt,
    this.isDone = false,
  });

  void toggleDone() {
    isDone = !isDone;
  }
}
