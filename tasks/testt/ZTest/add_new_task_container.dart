import 'package:flutter/material.dart';

class AddNewTaskContainer extends StatelessWidget {
  const AddNewTaskContainer({
    super.key,
    required this.textcontroller,
  });

  final TextEditingController textcontroller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: const Color(0xffEEF5F3),
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        controller: textcontroller,
        decoration: const InputDecoration(
          hintText: 'Add a new task...',
          border: InputBorder.none,
        ),
        //onSubmitted: (_) => addTask(),
      ),
    );
  }
}
