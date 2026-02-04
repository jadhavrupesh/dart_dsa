/// Problem: Maximum Product Subarray
/// Difficulty: Advanced
///
/// Problem Statement:
/// Given an integer array `nums`, find a contiguous non-empty subarray within the array that has the largest product, and return the product.
///
/// Input/Output Format:
/// - Input: A list of integers `nums`.
/// - Output: An integer representing the max product.
///
/// Constraints:
/// - 1 <= nums.length <= 2 * 10^4
/// - -10 <= nums[i] <= 10
/// - The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.
///
/// Example Test Cases:
/// Case 1:
/// Input: [2, 3, -2, 4]
/// Output: 6
/// Explanation: [2, 3] has the largest product 6.
///
/// Case 2:
/// Input: [-2, 0, -1]
/// Output: 0
/// Explanation: The result cannot be 2, because [-2,-1] is not a subarray.
///
/// Progressive Hints:
/// 1. This is similar to Kadane's algorithm, but we need to handle negative numbers.
/// 2. A negative number can turn a small product into a large positive product if the previous product was negative.
/// 3. Maintain `maxProduct` and `minProduct` at each step.
/// 4. When iterating, if `nums[i] < 0`, swap `maxProduct` and `minProduct`.
/// 5. `maxProduct = max(nums[i], maxProduct * nums[i])`.
/// 6. `minProduct = min(nums[i], minProduct * nums[i])`.
/// 7. Update the global max.
///
/// Time Complexity Goal: O(N)
/// Space Complexity Goal: O(1)

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
  assert(Solution().solve([2, 3, -2, 4]) == 6);
  assert(Solution().solve([-2, 0, -1]) == 0);
  assert(Solution().solve([-2, 3, -4]) == 24);
  print("All test cases passed!");
}

class Solution {
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
}
