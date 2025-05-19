// lib/screens/my_tasks_screen.dart
import 'package:flutter/material.dart';
import '../model/task_manager.dart';
import '../widgets/add_new_task_container.dart';
import '../widgets/empty_tasks.dart';

class MyTasksScreen extends StatefulWidget {
  const MyTasksScreen({super.key});

  @override
  State<MyTasksScreen> createState() => MyTasksScreenState();
}

class MyTasksScreenState extends State<MyTasksScreen> {
  final textController = TextEditingController();
  final TaskManager taskManager = TaskManager();  // 👈 استخدام TaskManager داخلي

  void addTask() {
    setState(() {
      taskManager.addTask(textController.text);
      textController.clear();
    });
  }

  void toggleTask(int index) {
    setState(() {
      taskManager.toggleTask(index);
    });
  }

  void deleteTask(int index) {
    setState(() {
      taskManager.deleteTask(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    final tasks = taskManager.tasks;

    return Scaffold(
      backgroundColor: const Color(0xFFF5FBF9),
      appBar: AppBar(
        backgroundColor: const Color(0xFF9EF3E3),
        elevation: 0,
        title: const Text(
          'My Tasks',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: tasks.isEmpty
                ? const Center(child: EmptyTasks())
                : ListView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: tasks.length,
                    itemBuilder: (context, index) {
                      final task = tasks[index];
                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        margin: const EdgeInsets.only(bottom: 12),
                        child: ListTile(
                          leading: Checkbox(
                            value: task.isDone,
                            onChanged: (_) => toggleTask(index),
                            activeColor: Colors.teal,
                          ),
                          title: Text(
                            task.title,
                            style: TextStyle(
                              decoration: task.isDone
                                  ? TextDecoration.lineThrough
                                  : null,
                              color:
                                  task.isDone ? Colors.grey : Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            'Created: ${task.createdAt.day}/${task.createdAt.month}/${task.createdAt.year}',
                            style: const TextStyle(fontSize: 12),
                          ),
                          trailing: IconButton(
                            icon: const Icon(
                              Icons.delete,
                              color: Colors.redAccent,
                            ),
                            onPressed: () => deleteTask(index),
                          ),
                        ),
                      );
                    },
                  ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child:
                      AddNewTaskContainer(textController: textController),
                ),
                const SizedBox(width: 10),
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Color(0xffDEE4E2),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.add),
                    onPressed: addTask,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
