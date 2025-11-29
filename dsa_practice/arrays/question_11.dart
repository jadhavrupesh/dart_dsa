/// Problem: 3Sum
/// Difficulty: Intermediate
///
/// Problem Statement:
/// Given an integer array `nums`, return all the triplets `[nums[i], nums[j], nums[k]]`
/// such that `i != j`, `i != k`, and `j != k`, and `nums[i] + nums[j] + nums[k] == 0`.
///
/// Notice that the solution set must not contain duplicate triplets.
///
/// Input/Output Format:
/// - Input: A list of integers `nums`.
/// - Output: A list of lists, where each inner list is a unique triplet summing to 0.
///
/// Constraints:
/// - 0 <= nums.length <= 3000
/// - -10^5 <= nums[i] <= 10^5
///
/// Example Test Cases:
/// Case 1:
/// Input: [-1, 0, 1, 2, -1, -4]
/// Output: [[-1, -1, 2], [-1, 0, 1]]
/// Explanation:
/// nums[0] + nums[1] + nums[2] = -1 + 0 + 1 = 0.
/// nums[1] + nums[2] + nums[4] = 0 + 1 + (-1) = 0.
/// nums[0] + nums[3] + nums[4] = -1 + 2 + (-1) = 0.
/// The distinct triplets are [-1, 0, 1] and [-1, -1, 2].
///
/// Case 2:
/// Input: [0, 1, 1]
/// Output: []
/// Explanation: The only possible triplet does not sum to 0.
///
/// Case 3:
/// Input: [0, 0, 0]
/// Output: [[0, 0, 0]]
///
/// Progressive Hints:
/// 1. Sorting the array first makes it easier to avoid duplicates and use two pointers.
/// 2. Iterate through the array with a variable `i`. This will be the first element of the triplet.
/// 3. For each `i`, use the Two Pointer technique (from Q1) on the remaining part of the array to find pairs that sum to `-nums[i]`.
/// 4. Skip duplicate values for `i` and for the two pointers to ensure unique triplets.
///
/// Time Complexity Goal: O(N^2)
/// Space Complexity Goal: O(1) or O(N) (depending on sorting implementation)

void main() {
  List<int> test1 = [-1, 0, 1, 2, -1, -4];
  print("Input: \$test1");
  print("Output: \${solve(test1)}"); // Expected: [[-1, -1, 2], [-1, 0, 1]] (order may vary)

  List<int> test2 = [0, 1, 1];
  print("Input: \$test2");
  print("Output: \${solve(test2)}"); // Expected: []

  List<int> test3 = [0, 0, 0];
  print("Input: \$test3");
  print("Output: \${solve(test3)}"); // Expected: [[0, 0, 0]]
}

// TODO: Implement your solution here
List<List<int>> solve(List<int> nums) {
  // Your code here
  return [];
}
