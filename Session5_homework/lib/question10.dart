//Create a program with the numbers [3, 7, 2, 9, 12, 4, 6]. Print only the numbers that are divisible by
// 3

void main() {
  List<int> numbers = [3, 7, 2, 9, 12, 4, 6];

  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] % 3 == 0) {
      print(numbers[i]);
    }
  }
}
//forin loop can't be used here as we want to access value with index