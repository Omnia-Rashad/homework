import 'package:flutter/material.dart';

class TowButtonSection extends StatelessWidget {
  const TowButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 14,
      children: [
        ButtonContent(buttonCOlor: Color(0xff2096F3), buttonText: 'Settings'),

        ButtonContent(buttonCOlor: Color(0xffFF9700), buttonText: 'Profile'),
      ],
    );
  }
}

class ButtonContent extends StatelessWidget {
  final Color buttonCOlor;
  final String buttonText;

  const ButtonContent({required this.buttonCOlor, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: buttonCOlor,
        boxShadow: [
          BoxShadow(
            color: Color(0xffCAC5CB),
            blurRadius: 3,
            spreadRadius: 1,
            offset: Offset(0, 4),
          ),
        ],
      ),
      height: 40,
      width: 180,

      child: Center(
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
