//  Q5. Multiplication Table with Sum - Ask the user for a number. - Print its multiplication table up to
//  10, then calculate the sum of all results.

import 'dart:io';

void main() {
  print('Please enter a number');
  int num = int.parse(stdin.readLineSync()!);

  int sum = 0;
  for (int i = 1; i <= 10; i++) {
    print('$num * $i = ${i * num}');
    sum += (i * num);
  }
  print(sum);
}
