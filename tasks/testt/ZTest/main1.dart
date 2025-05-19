import 'package:flutter/material.dart';
import 'my_tasks_screen_state.dart';

void main() {
  runApp(const MyTasksApp());
}

class MyTasksApp extends StatelessWidget {
  const MyTasksApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyTasksScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyTasksScreen extends StatefulWidget {
  const MyTasksScreen({super.key});

  @override
  State<MyTasksScreen> createState() => MyTasksScreenState();
}
