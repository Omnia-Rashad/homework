import 'package:flutter/material.dart';
import 'package:task_app/widgets/screen_design.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Tasks', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Color(0xff9EF2E3),
      ),

      body: ScreenDesign(),
    );
  }
}
