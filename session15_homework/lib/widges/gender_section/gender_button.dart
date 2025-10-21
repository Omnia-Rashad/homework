import 'package:flutter/material.dart';

class GenderButton extends StatelessWidget {
  final Widget genderIcon;
  final String genderLable;
  final bool isSelected;
  final VoidCallback onTap;

  const GenderButton({
    super.key,
    required this.genderIcon,
    required this.genderLable,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: isSelected ? const Color(0xff090B24) : const Color(0xff17172E),
        child: Container(
          height: 160,
          width: 160,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              genderIcon,

              Text(
                '$genderLable',
                style: TextStyle(fontSize: 16, color: Color(0xff828493)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
