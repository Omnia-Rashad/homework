//  Q1. Sum, Average & Compare - Ask the user for three numbers. - Print their sum and average.
//  Then, check if the average is greater than 50 or not.

import 'dart:io';

void main() {
  print('Please enter three numbers');
  int number1 = int.parse(stdin.readLineSync()!);
  int number2 = int.parse(stdin.readLineSync()!);
  int number3 = int.parse(stdin.readLineSync()!);

  int sum = number1 + number2 + number3;
  print('The sum is $sum');

  double average = sum / 3;
  print('The average is $average');

  bool isAverageGreaterThan50 = average > 50;
  print(isAverageGreaterThan50);
}
