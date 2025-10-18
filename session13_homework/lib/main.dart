import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(height: 30, color: Color(0xffFFFFFFE)),
                Container(color: Color(0xffE4F3FE), height: 170, width: 370),
                Container(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(height: 20, width: 20, color: Color(0xffE0E0E0)),
                    Container(width: 10),
                    Container(height: 20, width: 340, color: Color(0xffE0E0E0)),
                  ],
                ),
                Container(height: 20),
                Container(height: 2, width: 370, color: Color(0xffE0E0E0)),
                Container(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          color: Color(0xffA5D6A7),
                          height: 50,
                          width: 120,
                        ),
                        Container(
                          height: 10,
                          width: 120,
                          color: Color(0xffE9F8EA),
                        ),
                        Container(
                          color: Color(0xffA5D6A7),
                          height: 50,
                          width: 120,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(width: 20),
                        Container(
                          height: 110,
                          width: 110,
                          color: Color(0xffFFCC80),
                        ),
                        Container(
                          width: 10,
                          height: 110,
                          color: Color(0xffFFF3DF),
                        ),
                        Container(
                          height: 110,
                          width: 110,
                          color: Color(0xffFFCC80),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(height: 100, width: 90, color: Color(0xffE1BEE8)),
                    Container(width: 10, height: 100, color: Color(0xffF3E5F6)),

                    Column(
                      children: [
                        Container(
                          height: 45,
                          width: 90,
                          color: Color(0xffCF93D9),
                        ),
                        Container(
                          height: 10,
                          width: 90,
                          color: Color(0xffDDB1E6),
                        ),
                        Container(
                          height: 45,
                          width: 90,
                          color: Color(0xffCF93D9),
                        ),
                      ],
                    ),
                    Container(width: 10, height: 100, color: Color(0xffF3E5F6)),
                    Container(height: 100, width: 80, color: Color(0xffE1BEE8)),
                    Container(height: 100, width: 80, color: Color(0xffF3E5F6)),
                  ],
                ),
                Container(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(height: 60, width: 170, color: Color(0xffB2DFDC)),
                    Container(width: 20),
                    Container(height: 60, width: 170, color: Color(0xff80CBC4)),
                  ],
                ),
                Container(height: 20),
                Container(height: 45, width: 365, color: Color(0xffE0E0E0)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
