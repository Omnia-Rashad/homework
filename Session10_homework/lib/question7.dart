//  Ask the user to input a list of integers.
//- Print the largest number, the smallest number, and their difference.
//- Calculate the average of the list.- Print all numbers that are above the average.
//- Finally, print how many numbers are even and how many are odd in the list

import 'dart:io';

void main() {
  print('please enter 10 of integers');
  List<int> numbers = [];

  for (int i = 0; i < 10; i++) {
    int number = int.parse(stdin.readLineSync()!);
    numbers.add(number);
  }

  int largestNumber = numbers[0];
  int smallestNumber = numbers[0];
  int sum = 0;
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] > largestNumber) {
      largestNumber = numbers[i];
    }
    if (numbers[i] < smallestNumber) {
      smallestNumber = numbers[i];
    }
    sum += numbers[i];
  }
  double average = sum / numbers.length;

  int evenCount = 0;
  int oddCount = 0;
  print('Numbers larger than the average');
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] > average) {
      print(numbers[i]);
    }
    if (numbers[i] % 2 == 0) {
      evenCount++;
    } else {
      oddCount++;
    }
  }

  print('The largest number is : $largestNumber');
  print('The smallest number is : $smallestNumber');
  print(
    'The difference between largest and smallest number is ${largestNumber - smallestNumber}',
  );
  print('The average of numbers is $average');
  print('There ara $evenCount even numbers');
  print('There ara $oddCount odd numbers');
}
