import 'dart:io';

void main() {
  print('Please enter 6 numbers');
  List<int> numbers = [];
  int largestNumber = 0;
  int secondLargestNumber = 0;

  for (int i = 0; i < 6; i++) {
    int number = int.parse(stdin.readLineSync()!);
    numbers.add(number);

    if (numbers[i] > largestNumber) {
      secondLargestNumber = largestNumber;
      largestNumber = numbers[i];
    } else if (numbers[i] > secondLargestNumber) {
      secondLargestNumber = numbers[i];
    }
  }
  print('The largest number is $largestNumber');
  print('The second Lagest number is $secondLargestNumber');
}
