/// Solution for: Maximum Product Subarray
///
/// Approach Explanation:
/// We use a variation of **Kadane's Algorithm**.
/// Since multiplying by a negative number flips the sign, we need to keep track of both the **maximum product** and the **minimum product** ending at the current position.
/// - If the current number is negative, the max product could come from `minProduct * current`.
/// - If the current number is positive, the max product comes from `maxProduct * current`.
///
/// Logic:
/// 1. Initialize `maxProd = nums[0]`, `minProd = nums[0]`, `result = nums[0]`.
/// 2. Iterate from 1 to n-1:
///    - If `nums[i] < 0`, swap `maxProd` and `minProd`.
///    - `maxProd = max(nums[i], maxProd * nums[i])`.
///    - `minProd = min(nums[i], minProd * nums[i])`.
///    - `result = max(result, maxProd)`.
///
/// Time Complexity: O(N) - Single pass.
/// Space Complexity: O(1).
///
/// Optimized Solution:

import 'dart:math';

void main() {
  assert(solve([2, 3, -2, 4]) == 6);
  assert(solve([-2, 0, -1]) == 0);
  assert(solve([-2, 3, -4]) == 24);
  print("All test cases passed!");
}

int solve(List<int> nums) {
  if (nums.isEmpty) return 0;

  int maxProd = nums[0];
  int minProd = nums[0];
  int result = nums[0];

  for (int i = 1; i < nums.length; i++) {
    int curr = nums[i];

    if (curr < 0) {
      int temp = maxProd;
      maxProd = minProd;
      minProd = temp;
    }

    maxProd = max(curr, maxProd * curr);
    minProd = min(curr, minProd * curr);

    result = max(result, maxProd);
  }

  return result;
}
