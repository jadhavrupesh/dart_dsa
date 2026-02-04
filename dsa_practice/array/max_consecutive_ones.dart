/// Problem: Max Consecutive Ones
/// Difficulty: Beginner
///
/// Problem Statement:
/// Given a binary array `nums` (containing only 0s and 1s), return the maximum number of consecutive 1s in the array.
///
/// Input/Output Format:
/// - Input: A list of integers `nums`.
/// - Output: An integer representing the max count.
///
/// Constraints:
/// - 1 <= nums.length <= 10^5
/// - nums[i] is either 0 or 1.
///
/// Example Test Cases:
/// Case 1:
/// Input: [1, 1, 0, 1, 1, 1]
/// Output: 3
/// Explanation: The first two digits or the last three digits are consecutive 1s. The maximum is 3.
///
/// Case 2:
/// Input: [1, 0, 1, 1, 0, 1]
/// Output: 2
///
/// Progressive Hints:
/// 1. Maintain a `currentCount` and a `maxCount`.
/// 2. Iterate through the array.
/// 3. If `nums[i] == 1`, increment `currentCount`.
/// 4. If `nums[i] == 0`, reset `currentCount` to 0.
/// 5. Update `maxCount` with the maximum of `maxCount` and `currentCount` at each step (or when resetting).
///
/// Time Complexity Goal: O(N)
/// Space Complexity Goal: O(1)

/// Solution for: Max Consecutive Ones
///
/// Approach Explanation:
/// We iterate through the array keeping track of the current streak of 1s.
/// - If we see a 1, we increase the `currentCount`.
/// - If we see a 0, the streak is broken, so we reset `currentCount` to 0.
/// - We always update `maxCount` to be the maximum of itself and `currentCount`.
///
/// Time Complexity: O(N) - Single pass.
/// Space Complexity: O(1).
///
/// Optimized Solution:

void main() {
  assert(Solution().solve([1, 1, 0, 1, 1, 1]) == 3);
  assert(Solution().solve([1, 0, 1, 1, 0, 1]) == 2);
  assert(Solution().solve([0, 0, 0]) == 0);
  assert(Solution().solve([1, 1, 1]) == 3);
  print("All test cases passed!");
}

class Solution {
  int solve(List<int> nums) {
    int maxCount = 0;
    int currentCount = 0;

    for (int num in nums) {
      if (num == 1) {
        currentCount++;
        if (currentCount > maxCount) {
          maxCount = currentCount;
        }
      } else {
        currentCount = 0;
      }
    }

    return maxCount;
  }
}
