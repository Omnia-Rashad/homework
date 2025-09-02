// Q10
//  Create a function that takes an integer n and returns the sum of all numbers from 1 to n. Print the
//  returned value

void main() {
  int result = addition(10);
  print(result);
}

int addition(int number) {
  int sum = 0;
  for (int i = 1; i <= number; i++) {
    sum += i;
  }
  return sum;
}
