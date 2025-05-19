
import 'task.dart';

class TaskManager {
  final List<Task> taskss = [];

  List<Task> get tasks => List.unmodifiable(taskss);

  void addTask(String title) {
    if (title.trim().isEmpty) return;
    taskss.add(Task(title: title.trim(), createdAt: DateTime.now()));
  }

  void toggleTask(int index) {
    if (index >= taskss.length) return;
    taskss[index].isDone = !taskss[index].isDone;
  }

  void deleteTask(int index) {
    if (index >= taskss.length) return;
    taskss.removeAt(index);
  }
}
