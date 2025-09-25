void main() {
  bool doesContainDublicate = containsDuplicate([1, 2, 3, 5, 8]);
  print(doesContainDublicate);
}

bool containsDuplicate(List<int> nums) {
  Set<int> numsSet = nums.toSet();
  return nums.length != numsSet.length;
  // Map<int, int> countNumbers = {};

  // for (int i = 0; i < nums.length; i++) {
  //   if (countNumbers.containsKey(nums[i])) {
  //     countNumbers[nums[i]] = countNumbers[nums[i]]! + 1;
  //   } else {
  //     countNumbers[nums[i]] = 1;
  //   }
  // }
  // for (int count in countNumbers.values) {
  //   if (count > 1) {
  //     return true;
  //   }
  // }

  // return false;
}
