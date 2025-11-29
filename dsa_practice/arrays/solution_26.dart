/// Solution for: Longest Consecutive Sequence
///
/// Approach Explanation:
/// We use a **HashSet** to allow O(1) lookups.
/// 1. Add all numbers to a Set.
/// 2. Iterate through the Set.
/// 3. For each number `x`, check if `x - 1` exists.
///    - If `x - 1` exists, then `x` is not the start of a sequence (it's part of a sequence starting earlier). We skip it.
///    - If `x - 1` does NOT exist, `x` is the start of a new sequence.
///      - We then check for `x + 1`, `x + 2`, etc., counting the length until the sequence breaks.
///      - Update `maxLength`.
///
/// Time Complexity: O(N) - Although we have a while loop inside the for loop, each number is visited at most twice (once to check if it's a start, and once as part of the sequence counting).
/// Space Complexity: O(N) - To store the set.
///
/// Optimized Solution:

import 'dart:math';

void main() {
  assert(solve([100, 4, 200, 1, 3, 2]) == 4);
  assert(solve([0, 3, 7, 2, 5, 8, 4, 6, 0, 1]) == 9);
  assert(solve([1, 2, 0, 1]) == 3); // 0, 1, 2
  print("All test cases passed!");
}

int solve(List<int> nums) {
  if (nums.isEmpty) return 0;

  Set<int> numSet = nums.toSet();
  int maxLength = 0;

  for (int num in numSet) {
    // Check if this is the start of a sequence
    if (!numSet.contains(num - 1)) {
      int currentNum = num;
      int currentLength = 1;

      while (numSet.contains(currentNum + 1)) {
        currentNum += 1;
        currentLength += 1;
      }

      maxLength = max(maxLength, currentLength);
    }
  }

  return maxLength;
}
