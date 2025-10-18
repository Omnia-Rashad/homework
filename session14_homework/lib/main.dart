import 'package:flutter/material.dart';
import 'widgets/hello_section.dart';
import 'widgets/quickstats_section.dart';
import 'widgets/features_section.dart';
import 'widgets/tow_button_section.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Color.fromARGB(255, 250, 235, 250),
          child: Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 48),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HelloSection(),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Text(
                        'Quick Stats',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    QuickStatsSection(),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Text(
                        'Features',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    FeatureSection(),

                    Spacer(),

                    TowButtonSection(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
