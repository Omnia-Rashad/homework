// Q1. Class with Method - Create a class Calculator with two attributes: num1 and num2. - Add a
// method addNumbers() that prints the sum of the two numbers. - Create an object in main() and call
// the method

void main() {
  Clculator addition = Clculator();
  addition.addNumbers(10, 5);
}

class Clculator {
  int? num1;
  int? num2;

  void addNumbers(num1, num2) {
    print(num1 + num2);
  }
}
