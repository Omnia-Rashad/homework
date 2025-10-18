import 'package:flutter/material.dart';

class FeatureSection extends StatelessWidget {
  const FeatureSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        FeatureContainer(
          iconShape: Icons.speed,
          iconColor: Color(0xff673AB7),
          colorBackgroundIcon: Color(0xffEEE9F8),
          firstText: 'Fast Performance',
          secondText: 'Lighting fast app performance',
        ),

        FeatureContainer(
          iconShape: Icons.security,
          iconColor: Color(0xff2097F1),
          colorBackgroundIcon: Color(0xffECF8FE),
          firstText: 'Secure',
          secondText: 'Your data is safe with us',
        ),

        FeatureContainer(
          iconShape: Icons.palette,
          iconColor: Color(0xffFD9709),
          colorBackgroundIcon: Color(0xffFFF5E6),
          firstText: 'Beautiful UI',
          secondText: 'Modern and clean design',
        ),
      ],
    );
  }
}

class FeatureContainer extends StatelessWidget {
  final IconData iconShape;
  final Color iconColor;
  final Color colorBackgroundIcon;
  final String firstText;
  final String secondText;

  const FeatureContainer({
    required this.iconShape,
    required this.iconColor,
    required this.colorBackgroundIcon,
    required this.firstText,
    required this.secondText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0xffCAC5CB),
            blurRadius: 3,
            spreadRadius: 1,
            offset: Offset(0, 4),
          ),
        ],
      ),

      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: colorBackgroundIcon,
                ),
                height: 35,
                width: 35,
                child: Icon(iconShape, color: iconColor),
              ),
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  firstText,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  secondText,
                  style: TextStyle(fontSize: 12, color: Color(0xff9F9F9F)),
                ),
              ],
            ),

            Spacer(),

            Icon(Icons.chevron_right, color: Color(0xff9F9F9F)),
          ],
        ),
      ),
    );
  }
}
