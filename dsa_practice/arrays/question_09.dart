/// Problem: Missing Number
/// Difficulty: Beginner
///
/// Problem Statement:
/// Given an array `nums` containing `n` distinct numbers in the range `[0, n]`,
/// return the only number in the range that is missing from the array.
///
/// Input/Output Format:
/// - Input: A list of integers `nums`.
/// - Output: An integer representing the missing number.
///
/// Constraints:
/// - n == nums.length
/// - 1 <= n <= 10^4
/// - 0 <= nums[i] <= n
/// - All numbers are unique.
///
/// Example Test Cases:
/// Case 1:
/// Input: [3, 0, 1]
/// Output: 2
/// Explanation: n = 3 since there are 3 numbers. The range is [0, 3]. 2 is missing.
///
/// Case 2:
/// Input: [0, 1]
/// Output: 2
/// Explanation: n = 2. Range [0, 2]. 2 is missing.
///
/// Case 3:
/// Input: [9,6,4,2,3,5,7,0,1]
/// Output: 8
///
/// Progressive Hints:
/// 1. The sum of the first `n` natural numbers is `n * (n + 1) / 2`.
/// 2. Calculate this expected sum.
/// 3. Calculate the actual sum of elements in the array.
/// 4. The difference `expectedSum - actualSum` is the missing number.
/// 5. Alternatively, use XOR operation (a ^ a = 0).
///
/// Time Complexity Goal: O(N)
/// Space Complexity Goal: O(1)

void main() {
  print(solve([3, 0, 1])); // Expected: 2
  print(solve([0, 1])); // Expected: 2
  print(solve([9, 6, 4, 2, 3, 5, 7, 0, 1])); // Expected: 8
}

// TODO: Implement your solution here
int solve(List<int> nums) {
  return -1;
}
