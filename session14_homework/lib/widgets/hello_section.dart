import 'package:flutter/material.dart';

class HelloSection extends StatelessWidget {
  //const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: Color(0xff8160B9),
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
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Hello',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 16),
                Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.rotationY(3.14),
                  child: Icon(Icons.waving_hand, color: Color(0xffFFD254)),
                ),
              ],
            ),

            SizedBox(height: 4),

            Text(
              'Try your best to build this ui',
              style: TextStyle(color: Colors.white),
            ),

            SizedBox(height: 12),

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xff673AB7),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff7356A6),
                    blurRadius: 3,
                    spreadRadius: 1,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              height: 50,
              width: 400,
              child: Center(
                child: Text(
                  'Get Strarted',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
