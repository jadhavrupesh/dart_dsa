/// Solution for: Left Rotate Array by One
///
/// Approach Explanation:
/// To rotate left by one:
/// 1. Save the first element (`nums[0]`) in a temporary variable.
/// 2. Iterate from index 0 to `nums.length - 2`.
/// 3. Set `nums[i] = nums[i+1]`. This shifts everything left.
/// 4. Finally, put the saved element at the last index (`nums[nums.length - 1]`).
///
/// Time Complexity: O(N) - We iterate through the array once.
/// Space Complexity: O(1) - In-place modification.
///
/// Optimized Solution:

void main() {
  assert(solve([1, 2, 3, 4, 5]).toString() == "[2, 3, 4, 5, 1]");
  assert(solve([10]).toString() == "[10]");
  assert(solve([1, 2]).toString() == "[2, 1]");
  print("All test cases passed!");
}

List<int> solve(List<int> nums) {
  if (nums.isEmpty || nums.length == 1) return nums;

  int first = nums[0];

  for (int i = 0; i < nums.length - 1; i++) {
    nums[i] = nums[i + 1];
  }

  nums[nums.length - 1] = first;
  return nums;
}
