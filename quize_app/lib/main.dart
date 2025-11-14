import 'package:flutter/material.dart';
import 'package:quize_app/screens/home_screen.dart';

void main() {
  runApp(const QuizeApp());
}

class QuizeApp extends StatelessWidget {
  const QuizeApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto'),
      home: HomeScreen(),
    );
  }
}
