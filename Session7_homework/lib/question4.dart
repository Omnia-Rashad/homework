//  Q4. Simple List Analyzer - Let the user enter 5 numbers into a list. - Print the largest and smallest
//  numbers, and then calculate the difference between them

import 'dart:io';

void main() {
  List<int> numbers = [];
  for (int i = 0; i < 5; i++) {
    print('please enter number ${i + 1}');
    int number = int.parse(stdin.readLineSync()!);
    numbers.add(number);
  }
  print(numbers);

  int smallestNumber = numbers[0];
  int largestNumber = numbers[0];
  for (int j = 0; j < numbers.length; j++) {
    if (numbers[j] > largestNumber) {
      largestNumber = numbers[j];
    }
    if (numbers[j] < smallestNumber) {
      smallestNumber = numbers[j];
    }
  }
  print('Largest value is $largestNumber');
  print('Smallest values is $smallestNumber');
  print(largestNumber - smallestNumber);
}
