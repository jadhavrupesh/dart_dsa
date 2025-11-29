/// Solution for: Reverse an Array
///
/// Approach Explanation:
/// We use the **Two Pointer** technique (Opposite Ends).
/// 1. Initialize `left` at 0 and `right` at `nums.length - 1`.
/// 2. Swap the elements at `left` and `right`.
/// 3. Move `left` forward (increment) and `right` backward (decrement).
/// 4. Repeat until `left` >= `right`.
///
/// This modifies the array in-place without needing extra space for a new array.
///
/// Step-by-Step Logic:
/// - Start: [1, 2, 3, 4, 5], left=0 (val 1), right=4 (val 5)
/// - Swap:  [5, 2, 3, 4, 1]
/// - Move:  left=1, right=3
/// - Swap:  [5, 4, 3, 2, 1]
/// - Move:  left=2, right=2
/// - Stop:  left is not < right.
///
/// Time Complexity: O(N) - We visit each element once (actually N/2 swaps).
/// Space Complexity: O(1) - We only use two integer variables.
///
/// Optimized Solution:

void main() {
  assert(solve([1, 2, 3, 4, 5]).toString() == "[5, 4, 3, 2, 1]");
  assert(solve([10, 20]).toString() == "[20, 10]");
  assert(solve([7]).toString() == "[7]");
  assert(solve([]).toString() == "[]");
  print("All test cases passed!");
}

List<int> solve(List<int> nums) {
  int left = 0;
  int right = nums.length - 1;

  while (left < right) {
    // Swap
    int temp = nums[left];
    nums[left] = nums[right];
    nums[right] = temp;

    // Move pointers
    left++;
    right--;
  }

  return nums;
}
