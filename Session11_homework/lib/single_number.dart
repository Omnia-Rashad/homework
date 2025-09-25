void main() {
  print(singleNumber([1, 2, 1, 2, 5]));
}

int singleNumber(List<int> nums) {
  Map<int, int> countNumbers = {};

  for (var num in nums) {
    countNumbers[num] = (countNumbers[num] ?? 0) + 1;
  }

  for (var entry in countNumbers.entries) {
    if (entry.value == 1) return entry.key;
  }
  return -1;
}
