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
  assert(solve([1, 1, 0, 1, 1, 1]) == 3);
  assert(solve([1, 0, 1, 1, 0, 1]) == 2);
  assert(solve([0, 0, 0]) == 0);
  assert(solve([1, 1, 1]) == 3);
  print("All test cases passed!");
}

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
