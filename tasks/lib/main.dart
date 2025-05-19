// lib/main.dart
import 'package:flutter/material.dart';
import 'screens/my_tasks_screen.dart';

void main() {
  runApp(const MyTasksApp());
}

class MyTasksApp extends StatelessWidget {
  const MyTasksApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyTasksScreen(),
    );
  }
}
