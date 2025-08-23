//Question 16
// Write a Dart program that evaluates three integer variables with different logical and comparison
// expressions. Print the results, then decide whether to print 'Rule passed' or 'Rule failed' based on
// one of the expressions.

void main() {
  int num1 = 10;
  int num2 = 20;
  int num3 = 30;

  bool isNum1Greater = num1 > num2 && num1 > num3;
  print(isNum1Greater);

  bool isNum2Greater = num2 > num1 && num2 > num3;
  print(isNum2Greater);

  bool isNum3Greater = num3 > num1 && num3 > num2;
  print(isNum3Greater);

  bool isSmaller = num1 < num2 || num3 < num2;
  print(isSmaller);

  bool isEqual = (num1 + num2) == num3;
  print(isEqual);

  if (isEqual) {
    print('Rule Passed');
  }
}
