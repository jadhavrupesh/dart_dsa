/// Problem: Rearrange Array Elements by Sign
/// Difficulty: Intermediate
///
/// Problem Statement:
/// You are given a 0-indexed integer array `nums` of even length consisting of an equal number of positive and negative integers.
/// You should rearrange the elements of `nums` such that the modified array follows the given conditions:
/// 1. Every consecutive pair of integers have opposite signs.
/// 2. For all integers with the same sign, the order in which they were present in `nums` is preserved.
/// 3. The rearranged array begins with a positive integer.
///
/// Input/Output Format:
/// - Input: A list of integers `nums`.
/// - Output: The rearranged list.
///
/// Constraints:
/// - 2 <= nums.length <= 2 * 10^5
/// - nums.length is even.
/// - nums[i] != 0
///
/// Example Test Cases:
/// Case 1:
/// Input: [3, 1, -2, -5, 2, -4]
/// Output: [3, -2, 1, -5, 2, -4]
/// Explanation:
/// Positives: [3, 1, 2]
/// Negatives: [-2, -5, -4]
/// Merged: [3, -2, 1, -5, 2, -4]
///
/// Case 2:
/// Input: [-1, 1]
/// Output: [1, -1]
///
/// Progressive Hints:
/// 1. Create a new result array of the same size.
/// 2. Maintain two pointers: `posIndex` starting at 0, and `negIndex` starting at 1.
/// 3. Iterate through the original array.
/// 4. If the number is positive, place it at `result[posIndex]` and increment `posIndex` by 2.
/// 5. If the number is negative, place it at `result[negIndex]` and increment `negIndex` by 2.
///
/// Time Complexity Goal: O(N)
/// Space Complexity Goal: O(N) (Since we need a new array to preserve order easily)

void main() {
  List<int> test1 = [3, 1, -2, -5, 2, -4];
  print("Input: \$test1");
  print("Output: \${solve(test1)}"); // Expected: [3, -2, 1, -5, 2, -4]

  List<int> test2 = [-1, 1];
  print("Input: \$test2");
  print("Output: \${solve(test2)}"); // Expected: [1, -1]
}

// TODO: Implement your solution here
List<int> solve(List<int> nums) {
  return [];
}
