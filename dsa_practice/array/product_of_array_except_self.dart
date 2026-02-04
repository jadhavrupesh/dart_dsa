/// Problem: Product of Array Except Self
/// Difficulty: Advanced
///
/// Problem Statement:
/// Given an integer array `nums`, return an array `answer` such that `answer[i]` is equal to the product of all the elements of `nums` except `nums[i]`.
/// The product of any prefix or suffix of `nums` is guaranteed to fit in a 32-bit integer.
///
/// You must write an algorithm that runs in O(n) time and without using the division operation.
///
/// Input/Output Format:
/// - Input: A list of integers `nums`.
/// - Output: A list of integers `answer`.
///
/// Constraints:
/// - 2 <= nums.length <= 10^5
/// - -30 <= nums[i] <= 30
///
/// Example Test Cases:
/// Case 1:
/// Input: [1, 2, 3, 4]
/// Output: [24, 12, 8, 6]
///
/// Case 2:
/// Input: [-1, 1, 0, -3, 3]
/// Output: [0, 0, 9, 0, 0]
///
/// Progressive Hints:
/// 1. `answer[i] = (product of all left elements) * (product of all right elements)`.
/// 2. Create a `prefix` array where `prefix[i]` is the product of elements from `0` to `i-1`.
/// 3. Create a `suffix` array where `suffix[i]` is the product of elements from `i+1` to `n-1`.
/// 4. `answer[i] = prefix[i] * suffix[i]`.
/// 5. Optimization: Can you do it with O(1) extra space (excluding the output array)?
///    - Use the output array to store the prefix products.
///    - Then iterate backwards and multiply by a running suffix product.
///
/// Time Complexity Goal: O(N)
/// Space Complexity Goal: O(1) (Output array doesn't count)

/// Solution for: Product of Array Except Self
///
/// Approach Explanation:
/// We need to calculate `leftProduct * rightProduct` for each index.
/// 1. **Left Pass**: Iterate forward. Store the running product of elements to the left of `i` in the `result` array.
/// 2. **Right Pass**: Iterate backward. Maintain a running `rightProduct`. Multiply `result[i]` (which currently holds left product) by `rightProduct`.
///
/// Logic:
/// - Init `result` array with 1s.
/// - Loop `i` from 0 to n-1:
///   - `result[i] = leftProduct`
///   - `leftProduct *= nums[i]`
/// - Loop `i` from n-1 to 0:
///   - `result[i] *= rightProduct`
///   - `rightProduct *= nums[i]`
///
/// Time Complexity: O(N) - Two passes.
/// Space Complexity: O(1) - Ignoring output array.
///
/// Optimized Solution:

void main() {
  assert(Solution().solve([1, 2, 3, 4]).toString() == "[24, 12, 8, 6]");
  assert(Solution().solve([-1, 1, 0, -3, 3]).toString() == "[0, 0, 9, 0, 0]");
  print("All test cases passed!");
}

class Solution {
  List<int> solve(List<int> nums) {
    int n = nums.length;
    List<int> result = List.filled(n, 1);

    // Left Pass
    int leftProduct = 1;
    for (int i = 0; i < n; i++) {
      result[i] = leftProduct;
      leftProduct *= nums[i];
    }

    // Right Pass
    int rightProduct = 1;
    for (int i = n - 1; i >= 0; i--) {
      result[i] *= rightProduct;
      rightProduct *= nums[i];
    }

    return result;
  }
}
