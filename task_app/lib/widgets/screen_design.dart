import 'package:flutter/material.dart';
import 'package:task_app/widgets/add_task_section.dart';

class ScreenDesign extends StatelessWidget {
  const ScreenDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.check_circle, color: Color(0xff9EF2E3), size: 90),

          SizedBox(height: 24),

          Text(
            'No Tasks yet',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xff6C7270),
              fontWeight: FontWeight.w400,
            ),
          ),

          SizedBox(height: 8),

          Text(
            'Add a task  to get started',
            style: TextStyle(fontSize: 16, color: Color(0xff9BA19F)),
          ),

          AddTaskSection(),
        ],
      ),
    );
  }
}
