// Q8. Digits Operations - Ask the user for a number (e.g., 528). - Print the sum of its digits and also
//  print the largest digit

import 'dart:io';

void main() {
  print('Please enter a number');
  int number = int.parse(stdin.readLineSync()!);

  int sum = 0;
  int max = 0;
  String numberString = number.toString();
  for (int i = 0; i < numberString.length; i++) {
    int digitInt = int.parse(numberString[i]);
    sum += digitInt;

    if (digitInt > max) {
      max = digitInt;
    }
  }
  print('The sum of digits is $sum');
  print('The largest digit is $max');
}
