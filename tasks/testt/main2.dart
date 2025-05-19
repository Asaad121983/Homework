import 'package:flutter/material.dart';
import 'ZTest/my_tasks_screen.dart';

void main() {
  runApp(MyTasksApp());
}

class MyTasksApp extends StatelessWidget {
  const MyTasksApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyTasksScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
