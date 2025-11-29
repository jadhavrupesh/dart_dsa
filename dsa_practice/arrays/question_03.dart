/// Problem: Find Minimum and Maximum Element
/// Difficulty: Beginner
///
/// Problem Statement:
/// Given an array of integers, find the minimum and maximum elements in it.
///
/// Input/Output Format:
/// - Input: A list of integers `nums`.
/// - Output: A list containing two integers: `[min, max]`.
///
/// Constraints:
/// - 1 <= nums.length <= 1000
/// - -10^9 <= nums[i] <= 10^9
///
/// Example Test Cases:
/// Case 1:
/// Input: [3, 2, 1, 56, 1000, 167]
/// Output: [1, 1000]
///
/// Case 2:
/// Input: [1, 345, 234, 21, 56789]
/// Output: [1, 56789]
///
/// Case 3:
/// Input: [5]
/// Output: [5, 5]
///
/// Progressive Hints:
/// 1. Initialize `min` and `max` with the first element of the array.
/// 2. Iterate through the rest of the array.
/// 3. Compare each element with `min` and `max` and update them if necessary.
///
/// Time Complexity Goal: O(N)
/// Space Complexity Goal: O(1)

void main() {
  List<int> test1 = [3, 2, 1, 56, 1000, 167];
  print("Input: \$test1");
  print("Output: \${solve(test1)}"); // Expected: [1, 1000]

  List<int> test2 = [5];
  print("Input: \$test2");
  print("Output: \${solve(test2)}"); // Expected: [5, 5]
}

// TODO: Implement your solution here
List<int> solve(List<int> nums) {
  return [];
}
