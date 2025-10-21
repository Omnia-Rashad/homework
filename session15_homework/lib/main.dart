import 'package:flutter/material.dart';
import 'widges/app_header_section.dart';
import 'widges/gender_section/gender_selector_section.dart';
import 'widges/height_section.dart';
import 'widges/weight_age_section/weight_age_section.dart';
import 'widges/calculation_section/calculation_button.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff03051A),

        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  spacing: 24,
                  children: [
                    AppHeader(),
                    GenderSelectorSection(),
                    HeightSection(),
                    WeightAgeSection(),
                  ],
                ),
              ),
              CalculationButton(),
            ],
          ),
        ),
      ),
    );
  }
}
