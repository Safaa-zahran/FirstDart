// leetCode
// Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.
void main() {
  // Test cases
  List<List<int>> testCases = [
    [1, 2, 3, 1],
    [1, 2, 3, 4],
    [1, 1, 1, 3, 3, 4, 3, 2, 4, 2]
  ];
  
  for (List<int> nums in testCases) {
    bool result = containsDuplicate(nums);
    print('Input: $nums');
    print('Output: $result\n');
  }
}

bool containsDuplicate(List<int> nums) {
  Set<int> seen = {};
  
  for (int num in nums) {
    if (seen.contains(num)) {
      return true;
    }
    seen.add(num);
  }
  
  return false;
}