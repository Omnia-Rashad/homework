// Q2
//  Create a program with the list [5, 10, 15, 20, 25]. Print the average of the numbers

void main() {
  List<int> numbers = [5, 10, 15, 20, 25];
  int sum = 0;
  double average;

  for (var item in numbers) {
    sum += item;
  }
  average = sum / numbers.length;
  print(average);
}
