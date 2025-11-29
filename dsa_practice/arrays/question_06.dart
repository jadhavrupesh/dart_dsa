/// Problem: Left Rotate Array by One
/// Difficulty: Beginner
///
/// Problem Statement:
/// Given an integer array `nums`, rotate the array to the left by one position.
/// The first element should move to the last position, and all other elements should shift left.
///
/// Input/Output Format:
/// - Input: A list of integers `nums`.
/// - Output: The modified list (rotated).
///
/// Constraints:
/// - 1 <= nums.length <= 1000
/// - -1000 <= nums[i] <= 1000
///
/// Example Test Cases:
/// Case 1:
/// Input: [1, 2, 3, 4, 5]
/// Output: [2, 3, 4, 5, 1]
///
/// Case 2:
/// Input: [10]
/// Output: [10]
///
/// Progressive Hints:
/// 1. Store the first element in a temporary variable.
/// 2. Shift all other elements one position to the left (e.g., `nums[i] = nums[i+1]`).
/// 3. Place the temporary variable at the last index.
///
/// Time Complexity Goal: O(N)
/// Space Complexity Goal: O(1)

void main() {
  List<int> test1 = [1, 2, 3, 4, 5];
  print("Original: \$test1");
  print("Rotated: \${solve(test1)}"); // Expected: [2, 3, 4, 5, 1]

  List<int> test2 = [10];
  print("Original: \$test2");
  print("Rotated: \${solve(test2)}"); // Expected: [10]
}

// TODO: Implement your solution here
List<int> solve(List<int> nums) {
  return nums;
}
