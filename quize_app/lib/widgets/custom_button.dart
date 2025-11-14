import 'package:flutter/material.dart';
import 'package:quize_app/theme/app_colors.dart';
import 'package:quize_app/theme/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 13),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 10,
        children: [
          Text(
            'Start Quiz',
            style: AppTextStyles.medium18(color: AppColors.primary),
          ),
        ],
      ),
    );
  }
}
