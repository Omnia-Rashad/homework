//Question 14
// Write a Dart program that works with a nullable list of integers. If the list is null or empty, print 'No
// scores'. Otherwise, calculate and print the sum of the first and last elements and check if it is
// greater than or equal to 40

void main() {
  List<int?> numbers = [1, 2, 3, 3, 4, 4, 4, 5];

  if (numbers == null) {
    print('No scores');
  } else {
    int sum = numbers[0]! + numbers[7]!;
    print(sum);

    bool isSumGreaterThan40 = sum >= 40;
    print(isSumGreaterThan40);
  }
}
