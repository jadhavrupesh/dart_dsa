/// Solution for: Missing Number
///
/// Approach Explanation:
/// We use the mathematical formula for the sum of the first `n` integers: `Sum = n * (n + 1) / 2`.
/// 1. Calculate the expected sum for the range `[0, n]`.
/// 2. Calculate the actual sum of the elements in the array.
/// 3. The missing number is simply `Expected Sum - Actual Sum`.
///
/// Alternative (XOR):
/// XOR all indices `0` to `n` and all values in `nums`. The result will be the missing number because `x ^ x = 0`.
///
/// Time Complexity: O(N) - To sum the array.
/// Space Complexity: O(1).
///
/// Optimized Solution (Sum Approach):

void main() {
  assert(solve([3, 0, 1]) == 2);
  assert(solve([0, 1]) == 2);
  assert(solve([9, 6, 4, 2, 3, 5, 7, 0, 1]) == 8);
  print("All test cases passed!");
}

int solve(List<int> nums) {
  int n = nums.length;
  int expectedSum = (n * (n + 1)) ~/ 2;
  int actualSum = 0;

  for (int num in nums) {
    actualSum += num;
  }

  return expectedSum - actualSum;
}
