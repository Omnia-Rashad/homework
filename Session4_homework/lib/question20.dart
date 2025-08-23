//Question 20
// Write a Dart program that checks access rules for a ticket gate. If the user is under 18, check if they
// have a parent. Use a switch statement on an area variable (general or restricted) to decide what
// message to print

import 'dart:io';

void main() {
  int userAge = int.parse(stdin.readLineSync()!);
  bool hasParent = false;

  if (userAge < 18 && hasParent == false) {
    print('Not available to enter');
  } else {
    print('Available to enter');

    String area = stdin.readLineSync()!;
    switch (area) {
      case 'general':
        print('acceptable to enter general area');
        break;

      case 'restricted':
        print('acceptable to enter restricted area');
        break;

      default:
        print('invalid input');
    }
  }
}
