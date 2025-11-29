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

void main() {
  print(solve([2, 3, -2, 4])); // Expected: 6
  print(solve([-2, 0, -1])); // Expected: 0
}

// TODO: Implement your solution here
int solve(List<int> nums) {
  return 0;
}
