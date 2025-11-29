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

import 'dart:math';

void main() {
  assert(solve([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6);
  assert(solve([1]) == 1);
  assert(solve([5, 4, -1, 7, 8]) == 23);
  assert(solve([-1, -2, -3]) == -1); // All negative case
  print("All test cases passed!");
}

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
