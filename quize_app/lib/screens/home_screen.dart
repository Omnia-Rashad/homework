import 'package:flutter/material.dart';
import 'package:quize_app/assets.dart';
import 'package:quize_app/theme/app_decoration.dart';
import 'package:quize_app/theme/app_text_styles.dart';
import 'package:quize_app/widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: AppDecoration.mainBackgroundDecoration,

      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              Text('Good morning,', style: AppTextStyles.regular16()),

              SizedBox(height: 11),

              Text('New topic is waiting', style: AppTextStyles.medium24()),

              Image.asset(Assets.homeImage),

              CustomButton(),
            ],
          ),
        ),
      ),
    );
  }
}
