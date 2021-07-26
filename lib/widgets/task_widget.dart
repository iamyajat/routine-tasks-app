import 'package:flutter/material.dart';

class TaskCardWidget extends StatelessWidget {
  final String content;
  final bool isDone;

  TaskCardWidget({required this.content, required this.isDone});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Checkbox(
            value: isDone,
            onChanged: (newValue) {},
          ),
          Text(
            content,
            style: TextStyle(
              fontSize: 14,
              fontWeight: isDone ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
