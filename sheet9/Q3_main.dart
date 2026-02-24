// Q3
void main() {
  print(binarySearch([-1, 0, 3, 5, 9, 12], 9));  //  4
  print(binarySearch([-1, 0, 3, 5, 9, 12], 2));  // -1
  print(binarySearch([1, 3, 5, 7, 9, 11], 7));   //  3
  print(binarySearch([5], 5));                    //  0
  print(binarySearch([5], 3));                    // -1
}

int binarySearch(List<int> nums, int target) {
  int left  = 0;
  int right = nums.length - 1;

  while (left <= right) {
    int mid = left + (right - left) ~/ 2;

    if (nums[mid] == target) return mid;
    if (nums[mid] < target)  left  = mid + 1;
    else                     right = mid - 1;
  }

  return -1;
}