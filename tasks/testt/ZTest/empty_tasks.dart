import 'package:flutter/material.dart';

class EmptyTasks extends StatelessWidget {
  const EmptyTasks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.check_circle_outline,
          size: 80,
          color: Colors.teal,
        ),
        SizedBox(height: 16),
        Text(
          'No tasks yet',
          style: TextStyle(
            fontSize: 18,
            color: Colors.black54,
          ),
        ),
        Text(
          'Add a task to get started',
          style: TextStyle(color: Colors.black38),
        ),
      ],
    );
  }
}
