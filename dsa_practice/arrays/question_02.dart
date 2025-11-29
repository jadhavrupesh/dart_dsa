/// Problem: Move Zeroes
/// Difficulty: Beginner
///
/// Problem Statement:
/// Given an integer array `nums`, move all `0`s to the end of it while maintaining
/// the relative order of the non-zero elements.
///
/// Note that you must do this in-place without making a copy of the array.
///
/// Input/Output Format:
/// - Input: A list of integers `nums`.
/// - Output: The modified list with zeroes at the end.
///
/// Constraints:
/// - 1 <= nums.length <= 10^4
/// - -2^31 <= nums[i] <= 2^31 - 1
///
/// Example Test Cases:
/// Case 1:
/// Input: [0, 1, 0, 3, 12]
/// Output: [1, 3, 12, 0, 0]
///
/// Case 2:
/// Input: [0]
/// Output: [0]
///
/// Case 3:
/// Input: [1, 2, 3]
/// Output: [1, 2, 3]
///
/// Progressive Hints:
/// 1. You need to keep track of where the next non-zero element should go.
/// 2. Use a pointer (let's call it `insertPos`) starting at 0.
/// 3. Iterate through the array with another pointer (loop variable).
/// 4. If you find a non-zero element, place it at `insertPos` and increment `insertPos`.
/// 5. After the loop, fill the rest of the array (from `insertPos` to end) with zeroes.
///
/// Time Complexity Goal: O(N)
/// Space Complexity Goal: O(1)

void main() {
  List<int> test1 = [0, 1, 0, 3, 12];
  print("Original: \$test1");
  print("Result: \${solve(test1)}"); // Expected: [1, 3, 12, 0, 0]

  List<int> test2 = [0, 0, 1];
  print("Original: \$test2");
  print("Result: \${solve(test2)}"); // Expected: [1, 0, 0]
}

// TODO: Implement your solution here
List<int> solve(List<int> nums) {
  // Your code here
  return nums;
}
