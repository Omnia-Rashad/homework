import 'package:flutter/material.dart';

class WeightAgeContainer extends StatelessWidget {
  final String cardLabe;
  final String cardValue;
  final VoidCallback onMinus;
  final VoidCallback onPlus;

  const WeightAgeContainer({
    super.key,
    required this.cardLabe,
    required this.cardValue,
    required this.onMinus,
    required this.onPlus,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xff17172E),
      child: Container(
        height: 160,
        width: 160,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$cardLabe',
              style: TextStyle(fontSize: 14, color: Color(0xff828493)),
            ),

            Text(
              '$cardValue',
              style: TextStyle(
                fontSize: 50,
                color: Color(0xffFFFFFF),
                fontWeight: FontWeight.bold,
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 8,
              children: [
                GestureDetector(
                  onTap: onMinus,
                  child: ClipOval(
                    child: Container(
                      color: Color(0xff4B4E5F),
                      width: 45,
                      height: 35,

                      child: Center(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          width: 20,
                          height: 3,
                        ),
                      ),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: onPlus,
                  child: ClipOval(
                    child: Container(
                      width: 45,
                      height: 35,
                      color: Color(0xff4B4E5F),

                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            width: 20,
                            height: 3,
                          ), // Horizontal
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            width: 3,
                            height: 20,
                          ), // Vertical
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
