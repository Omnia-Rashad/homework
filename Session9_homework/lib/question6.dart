// Q6 Create a class NumberCheck with an attribute value. Add a method isEven() that returns true if
//  the number is even, false otherwise. In main(), test the method with one number

void main() {
  NumberCheck number1 = NumberCheck();
  print(number1.isEven(1258));
}

class NumberCheck {
  int? value;

  bool isEven(value) {
    return value % 2 == 0;
  }
}
