/// Problem: Longest Consecutive Sequence
/// Difficulty: Advanced
///
/// Problem Statement:
/// Given an unsorted array of integers `nums`, return the length of the longest consecutive elements sequence.
/// You must write an algorithm that runs in O(n) time.
///
/// Input/Output Format:
/// - Input: A list of integers `nums`.
/// - Output: An integer representing the length.
///
/// Constraints:
/// - 0 <= nums.length <= 10^5
/// - -10^9 <= nums[i] <= 10^9
///
/// Example Test Cases:
/// Case 1:
/// Input: [100, 4, 200, 1, 3, 2]
/// Output: 4
/// Explanation: The longest consecutive elements sequence is [1, 2, 3, 4]. Therefore its length is 4.
///
/// Case 2:
/// Input: [0, 3, 7, 2, 5, 8, 4, 6, 0, 1]
/// Output: 9
///
/// Progressive Hints:
/// 1. Sorting takes O(N log N), which is not allowed.
/// 2. Use a HashSet to store all elements for O(1) lookups.
/// 3. Iterate through the set. For each number `num`:
///    - Check if `num - 1` exists in the set.
///    - If it does, then `num` is NOT the start of a sequence. Skip it.
///    - If it doesn't, then `num` IS the start of a sequence.
/// 4. If it is the start, keep checking for `num + 1`, `num + 2`, etc., in the set and count the length.
/// 5. Update the max length.
///
/// Time Complexity Goal: O(N)
/// Space Complexity Goal: O(N)

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
  assert(Solution().solve([100, 4, 200, 1, 3, 2]) == 4);
  assert(Solution().solve([0, 3, 7, 2, 5, 8, 4, 6, 0, 1]) == 9);
  assert(Solution().solve([1, 2, 0, 1]) == 3); // 0, 1, 2
  print("All test cases passed!");
}

class Solution {
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
}
