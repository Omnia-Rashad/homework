//  Q8
//  Create a program with a nullable integer called bonus. If it has a value greater than 50, print 'Big
//  bonus'. If it has a value but less than or equal to 50, print 'Small bonus'. If it is null, print 'No bonus'

import 'dart:io';

void main() {
  int? bonus = int.tryParse(stdin.readLineSync() ?? "");
  //we must put default String value so as to convert it to int value to avoid converting null value

  if (bonus == null) {
    print('No bonus');
  } else if (bonus > 50) {
    print('Big bonus');
  } else {
    print('Small bonus');
  }
}
