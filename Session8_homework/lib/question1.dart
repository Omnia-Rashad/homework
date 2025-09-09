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
