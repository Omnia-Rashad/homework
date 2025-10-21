import 'package:flutter/material.dart';
import 'result_page.dart';

class CalculationButton extends StatefulWidget {
  const CalculationButton({super.key});

  @override
  State<CalculationButton> createState() => _CalculationButtonState();
}

class _CalculationButtonState extends State<CalculationButton> {
  int weight = 60;
  int height = 170;
  int age = 20;

  double calculteBMI() {
    double heightInMeters = height / 100;
    return (weight / (heightInMeters * heightInMeters));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        double bmiResult = calculteBMI();

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultPage(bmiResult: bmiResult),
          ),
        );
      },
      child: Container(
        alignment: Alignment.center,
        width: 500,
        height: 50,
        color: Color(0xffED0D54),
        child: Text(
          'CALCULATE',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
