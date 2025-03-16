List<List<dynamic>> tasks = [];

void addTask(String description, DateTime dueDate) {
  tasks.add([description, dueDate, false]);
}

void removeTask(int index) {
  if (index >= 0 && index < tasks.length) {
    tasks.removeAt(index);
  }
}

void updateTaskStatus(int index, bool isCompleted) {
  if (index >= 0 && index < tasks.length) {
    tasks[index][2] = isCompleted;
  }
}

void displayTasks() {
  if (tasks.isEmpty) {
    print("Empty");
  } else {
    print("\n The List: ");
    for (int i = 0; i < tasks.length; i++) {
      print("${tasks[i][0]} , ${tasks[i][1]} , ${tasks[i][2]}");
    }
  }
}

void main() {
  addTask("Study Dart", DateTime(2024, 3, 20));
  addTask("solve Problems", DateTime(2024, 3, 22));
  addTask("Program Construction", DateTime(2024, 3, 25));

  updateTaskStatus(0, true);

  removeTask(1);

  displayTasks();
}
