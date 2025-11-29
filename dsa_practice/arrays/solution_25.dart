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
  assert(solve([1, 2, 3, 4]).toString() == "[24, 12, 8, 6]");
  assert(solve([-1, 1, 0, -3, 3]).toString() == "[0, 0, 9, 0, 0]");
  print("All test cases passed!");
}

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
