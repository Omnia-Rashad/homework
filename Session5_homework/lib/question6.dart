//Q6
// Create a program that calculates the factorial of 6 and prints the result

void main() {
  int num = 6;
  int fact = 1;

  while (num >= 1) {
    fact *= num;
    num--;
  }
  print(fact);
}
