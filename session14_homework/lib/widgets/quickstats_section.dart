import 'package:flutter/material.dart';

class QuickStatsSection extends StatelessWidget {
  // const QuickStatsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 28,
      children: [
        StatesContainer(
          iconShape: Icons.group,
          iconColor: Color(0xff673AB7),
          ratingNumber: '1,234',
          lable: 'Users',
        ),
        StatesContainer(
          iconShape: Icons.star,
          iconColor: Color(0xffFF9900),
          ratingNumber: '4.8',
          lable: 'Rating',
        ),
        StatesContainer(
          iconShape: Icons.trending_up,
          iconColor: Color(0xff2990E4),
          ratingNumber: '98%',
          lable: 'Success',
        ),
      ],
    );
  }
}

class StatesContainer extends StatelessWidget {
  final IconData iconShape;
  final Color iconColor;
  final String ratingNumber;
  final String lable;

  const StatesContainer({
    required this.iconShape,
    required this.iconColor,
    required this.ratingNumber,
    required this.lable,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
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
      height: 95,
      width: 98,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(iconShape, color: iconColor),

          SizedBox(height: 6),

          Text(
            ratingNumber,
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),

          Text(lable, style: TextStyle(fontSize: 12, color: Color(0xff9F9F9F))),
        ],
      ),
    );
  }
}
