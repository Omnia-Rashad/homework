import 'package:flutter/material.dart';
import 'gender_button.dart';

enum Gender { male, female }

class GenderSelectorSection extends StatefulWidget {
  const GenderSelectorSection({super.key});

  @override
  State<GenderSelectorSection> createState() => _GenderSelectorSectionState();
}

class _GenderSelectorSectionState extends State<GenderSelectorSection> {
  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GenderButton(
          genderIcon: Icon(
            Icons.male,
            color: Colors.white,
            size: 100,
            fontWeight: FontWeight.bold,
          ),
          genderLable: 'MALE',
          isSelected: selectedGender == Gender.male,
          onTap: () {
            setState(() {
              selectedGender = Gender.male;
            });
          },
        ),

        GenderButton(
          genderIcon: Icon(
            Icons.female,
            color: Colors.white,
            size: 100,
            fontWeight: FontWeight.bold,
          ),
          genderLable: 'FEMALE',
          isSelected: selectedGender == Gender.female,
          onTap: () {
            setState(() {
              selectedGender = Gender.female;
            });
          },
        ),
      ],
    );
  }
}
