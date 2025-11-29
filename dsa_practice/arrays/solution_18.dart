/// Solution for: Rearrange Array Elements by Sign
///
/// Approach Explanation:
/// We need to place positives at even indices (0, 2, 4...) and negatives at odd indices (1, 3, 5...).
/// Since we need to preserve the original order, we can iterate through the array once and place elements directly into their correct positions in a new array.
///
/// Logic:
/// 1. Create a `result` array of size `n`.
/// 2. Initialize `posIndex = 0` and `negIndex = 1`.
/// 3. Loop through `nums`:
///    - If `num > 0`: `result[posIndex] = num`, `posIndex += 2`.
///    - If `num < 0`: `result[negIndex] = num`, `negIndex += 2`.
///
/// Time Complexity: O(N) - Single pass.
/// Space Complexity: O(N) - For the result array.
///
/// Optimized Solution:

void main() {
  assert(solve([3, 1, -2, -5, 2, -4]).toString() == "[3, -2, 1, -5, 2, -4]");
  assert(solve([-1, 1]).toString() == "[1, -1]");
  print("All test cases passed!");
}

List<int> solve(List<int> nums) {
  int n = nums.length;
  List<int> result = List.filled(n, 0);
  int posIndex = 0;
  int negIndex = 1;

  for (int num in nums) {
    if (num > 0) {
      result[posIndex] = num;
      posIndex += 2;
    } else {
      result[negIndex] = num;
      negIndex += 2;
    }
  }

  return result;
}
