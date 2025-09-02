// Q9
//  Create a function that takes two integers as parameters and prints which one is larger

void main() {
  largerInteger(10, 5);
}

void largerInteger(int num1, int num2) {
  if (num1 > num2) {
    print('$num1 is larger');
  } else {
    print('$num2 is larger');
  }
}
