import 'package:flutter/material.dart';

class AddTaskSection extends StatelessWidget {
  const AddTaskSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        //borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),

      child: Row(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Add a new task...',
              fillColor: Color(0xffEDF3F1),
              filled: true,
            ),
          ),

          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffEDF3F1),
            ),
            child: Icon(Icons.add, color: Colors.white, size: 24),
          ),
        ],
      ),
    );
  }
}
