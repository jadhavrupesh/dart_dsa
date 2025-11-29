/// Problem: Maximum Subarray Sum
/// Difficulty: Intermediate
///
/// Problem Statement:
/// Given an integer array `nums`, find the contiguous subarray (containing at least one number) which has the largest sum and return its sum.
///
/// Input/Output Format:
/// - Input: A list of integers `nums`.
/// - Output: An integer representing the max sum.
///
/// Constraints:
/// - 1 <= nums.length <= 10^5
/// - -10^4 <= nums[i] <= 10^4
///
/// Example Test Cases:
/// Case 1:
/// Input: [-2, 1, -3, 4, -1, 2, 1, -5, 4]
/// Output: 6
/// Explanation: [4, -1, 2, 1] has the largest sum = 6.
///
/// Case 2:
/// Input: [1]
/// Output: 1
///
/// Case 3:
/// Input: [5, 4, -1, 7, 8]
/// Output: 23
///
/// Progressive Hints:
/// 1. Brute force: Check all subarrays. O(N^2). Too slow.
/// 2. Kadane's Algorithm: Iterate through the array.
/// 3. Maintain `currentSum` and `maxSum`.
/// 4. Add the current element to `currentSum`.
/// 5. If `currentSum` becomes negative, reset it to 0 (because a negative prefix will only decrease the sum of any future subarray).
/// 6. Update `maxSum` at each step.
///
/// Time Complexity Goal: O(N)
/// Space Complexity Goal: O(1)

void main() {
  print(solve([-2, 1, -3, 4, -1, 2, 1, -5, 4])); // Expected: 6
  print(solve([1])); // Expected: 1
  print(solve([5, 4, -1, 7, 8])); // Expected: 23
}

// TODO: Implement your solution here
int solve(List<int> nums) {
  return 0;
}
