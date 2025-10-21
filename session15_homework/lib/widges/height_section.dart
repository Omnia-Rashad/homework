import 'package:flutter/material.dart';

class HeightSection extends StatefulWidget {
  const HeightSection({super.key});

  @override
  State<HeightSection> createState() => _HeightSectionState();
}

class _HeightSectionState extends State<HeightSection> {
  double heightValue = 170;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xff17172E),
      ),
      width: 500,
      height: 150,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'HEIGHT',
            style: TextStyle(fontSize: 20, color: Color(0xff828493)),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '${heightValue.toInt()}',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
              ),
              Text('cm', style: TextStyle(color: Color(0xff828493))),
            ],
          ),

          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              activeTrackColor: Color(0xffFFFFFF),
              inactiveTrackColor: Color(0xff828493),
              thumbColor: Color(0xffEE0C54),
              trackHeight: 1,
              thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 13),
            ),
            child: Slider(
              value: heightValue,
              min: 100,
              max: 250,
              onChanged: (newValue) {
                setState(() {
                  heightValue = newValue;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
