import 'package:flutter/material.dart';
import 'taskmodel.dart';

class TaskManager extends ChangeNotifier {
  final List<Task> _tasks = [];

  List<Task> get tasks => _tasks;

  void addTask(String title) {
    final task = Task(
      id: DateTime.now().toString(),
      title: title,
      createdAt: DateTime.now(),
    );
    _tasks.add(task);
    notifyListeners();
  }

  void deleteTask(String id) {
    _tasks.removeWhere((task) => task.id == id);
    notifyListeners();
  }

  void toggleTaskStatus(String id) {
    final task = _tasks.firstWhere((task) => task.id == id);
    task.toggleDone();
    notifyListeners();
  }
}
