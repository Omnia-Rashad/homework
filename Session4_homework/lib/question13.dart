//Question 13
//Write a Dart program that calculates a grade (A, B, C, or D) based on a mark. Then use a switch
//statement to print a message for each grade

import 'dart:io';

void main() {
  dynamic grade = int.parse(stdin.readLineSync()!);

  if (grade >= 85 && grade <= 100) {
    grade = 'A';
  } else if (grade >= 75 && grade < 85) {
    grade = 'B';
  } else if (grade >= 65 && grade < 75) {
    grade = 'C';
  } else if (grade >= 50 && grade < 65) {
    grade = 'D';
  } else if (grade >= 0 && grade < 50) {
    grade = 'F';
  } else {
    print('invalid grade');
  }

  switch (grade) {
    case 'A':
      print('You are excellent');
      break;

    case 'B':
      print('You are very good');
      break;

    case 'C':
      print('You are good');
      break;

    case 'D':
      print('You are acceptable');
      break;

    case 'F':
      print('You are failed');
      break;

    default:
      print('invalid grade');
  }
}
