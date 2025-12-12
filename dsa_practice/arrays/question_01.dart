/// Problem: Reverse an Array
/// Difficulty: Beginner
///
/// Problem Statement:
/// Given an array (or list) of integers, reverse the order of elements in-place.
/// That means you should not create a new array, but modify the existing one.
///
/// Input/Output Format:
/// - Input: A list of integers `nums`.
/// - Output: The same list, but reversed. (Return the list for convenience).
///
/// Constraints:
/// - 1 <= nums.length <= 1000
/// - -1000 <= nums[i] <= 1000
///
/// Example Test Cases:
/// Case 1:
/// Input: [1, 2, 3, 4, 5]
/// Output: [5, 4, 3, 2, 1]
///
/// Case 2:
/// Input: [10, 20]
/// Output: [20, 10]
///
/// Case 3:
/// Input: [7]
/// Output: [7]
///
/// Progressive Hints:
/// 1. You can swap the first and last elements.
/// 2. Then swap the second and second-to-last elements.
/// 3. Use two variables (pointers), one at the start and one at the end.
/// 4. Stop when the start pointer meets or crosses the end pointer.
///
/// Time Complexity Goal: O(N)
/// Space Complexity Goal: O(1)

void main() {
  List<int> test1 = [1, 2, 3, 4, 5];
  print("Original: $test1");
  print("Reversed: ${solve(test1)}"); // Expected: [5, 4, 3, 2, 1]

  List<int> test2 = [10, 20];
  print("Original: $test2");
  print("Reversed: ${solve(test2)}"); // Expected: [20, 10]
}

// TODO: Implement your solution here
List<int> solve(List<int> nums) {
  int left = 0;
  int right = nums.length - 1;
  while (left < right) {
    int temp = nums[left];
    nums[left] = nums[right];
    nums[right] = temp;

    left++;
    right--;
  }

  return nums;
}
