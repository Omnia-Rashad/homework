// Q6. Number Guessing (3 Tries) - Generate a random number between 1 and 20. - Let the user
//  guess up to 3 times. If they fail, reveal the correct number

import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();
  int randomInt = Random().nextInt(20) + 1;
  bool isGuessed = false;

  print('YOu have 3 tries to guess number between 1 and 20');
  for (int i = 0; i < 3; i++) {
    int number = int.parse(stdin.readLineSync()!);

    if (number == randomInt) {
      print('You gussed coorectly!');
      // return;                        //we can't make return as there isn't function return value
      isGuessed = true;
      break;
    } else {
      print('wrong guess, try again');
    }
  }
  if (isGuessed) {
    print('The correct value is $randomInt');
  }
}
