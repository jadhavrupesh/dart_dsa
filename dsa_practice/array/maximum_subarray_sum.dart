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

/// Solution for: Maximum Subarray Sum
///
/// Approach Explanation:
/// We use **Kadane's Algorithm**.
/// The idea is to carry a positive sum as long as possible.
/// - We iterate through the array, adding the current number to `currentSum`.
/// - If `currentSum` exceeds `maxSum`, we update `maxSum`.
/// - If `currentSum` drops below 0, we reset it to 0. Why? Because if a subarray sum is negative, adding it to the next element will only make the next element smaller. So we are better off starting a new subarray from the next element.
///
/// Edge Case: If all numbers are negative, `maxSum` should be the largest single element (least negative), not 0.
/// To handle this, initialize `maxSum` to `nums[0]` (or -infinity) instead of 0.
///
/// Time Complexity: O(N) - Single pass.
/// Space Complexity: O(1).
///
/// Optimized Solution:

void main() {
  assert(Solution().solve([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6);
  assert(Solution().solve([1]) == 1);
  assert(Solution().solve([5, 4, -1, 7, 8]) == 23);
  assert(Solution().solve([-1, -2, -3]) == -1); // All negative case
  print("All test cases passed!");
}

class Solution {
  int solve(List<int> nums) {
    if (nums.isEmpty) return 0;

    int maxSum = nums[0];
    int currentSum = 0;

    for (int num in nums) {
      currentSum += num;

      if (currentSum > maxSum) {
        maxSum = currentSum;
      }

      if (currentSum < 0) {
        currentSum = 0;
      }
    }

    return maxSum;
  }
}
