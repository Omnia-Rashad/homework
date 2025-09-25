//  Q3
//  Given an array of integers nums sorted in ascending order, and an integer target, write a function to
//  search target in nums.- If target exists, return its index. Otherwise, return -1.- The algorithm must run in O(log n) time complexity.
//  Examples:- Input: nums = [-1,0,3,5,9,12], target = 9 → Output: 4
//  Explanation: 9 exists in nums and its index is 4.- Input: nums = [-1,0,3,5,9,12], target = 2 → Output: -1
//  Explanation: 2 does not exist in nums, so return -1

void main() {
  int targetIndex = search([1, 2, 3, 4, 5], 4);
  print('The target was found at index : $targetIndex');
}

int search(List<int> nums, int target) {
  if (nums.isEmpty) return -1;

  int start = 0;
  int last = nums.length - 1;

  while (start <= last) {
    int middle = (start + last) ~/ 2;
    if (target == nums[middle]) {
      return middle;
    } else if (target < nums[middle]) {
      last = middle - 1;
    } else {
      start = middle + 1;
    }
  }
  return -1;
}
