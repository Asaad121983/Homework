// lib/widgets/add_new_task_container.dart
import 'package:flutter/material.dart';

class AddNewTaskContainer extends StatelessWidget {
  const AddNewTaskContainer({
    super.key,
    required this.textController,
  });

  final TextEditingController textController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: const Color(0xffEEF5F3),
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        controller: textController,
        decoration: const InputDecoration(
          hintText: 'Add a new task...',
          border: InputBorder.none,
        ),
      ),
    );
  }
}
