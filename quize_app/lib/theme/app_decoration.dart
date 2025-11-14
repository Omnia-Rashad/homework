import 'package:flutter/cupertino.dart';

abstract class AppDecoration {
  static BoxDecoration selectedAnswerDecoration = BoxDecoration(
    gradient: LinearGradient(
      begin: AlignmentGeometry.bottomLeft,
      end: AlignmentGeometry.topRight,
      colors: [Color(0xffB8B2FF), Color(0xffC6C2F8)],
    ),
  );

  static BoxDecoration mainBackgroundDecoration = BoxDecoration(
    gradient: LinearGradient(
      begin: AlignmentGeometry.topLeft,
      end: AlignmentGeometry.bottomRight,
      colors: [Color(0xff060B26), Color(0xff1A1F37)],
    ),
  );
}
