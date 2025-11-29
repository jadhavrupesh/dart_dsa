/// Solution for: Move Zeroes
///
/// Approach Explanation:
/// We use the **Two Pointer** technique (Fast & Slow).
/// - `insertPos` (Slow Pointer): Points to the position where the next non-zero element should be placed.
/// - `i` (Fast Pointer): Iterates through the array to find non-zero elements.
///
/// Logic:
/// 1. Iterate through the array with `i`.
/// 2. If `nums[i]` is non-zero:
///    - Place `nums[i]` at `nums[insertPos]`.
///    - Increment `insertPos`.
/// 3. After the loop finishes, all non-zero elements are at the beginning of the array in their original order.
/// 4. Run a second loop from `insertPos` to the end of the array and fill it with `0`s.
///
/// Alternative One-Pass Approach (Swap):
/// Instead of filling zeroes at the end, you can swap `nums[i]` with `nums[insertPos]` whenever `nums[i] != 0`.
/// This handles both placing the non-zero and moving the zero to the back in one go.
///
/// Time Complexity: O(N) - We traverse the array once (or twice).
/// Space Complexity: O(1) - In-place modification.
///
/// Optimized Solution (Swap Approach):

void main() {
  assert(solve([0, 1, 0, 3, 12]).toString() == "[1, 3, 12, 0, 0]");
  assert(solve([0]).toString() == "[0]");
  assert(solve([1, 2, 3]).toString() == "[1, 2, 3]");
  assert(solve([0, 0, 1]).toString() == "[1, 0, 0]");
  print("All test cases passed!");
}

List<int> solve(List<int> nums) {
  int insertPos = 0;

  for (int i = 0; i < nums.length; i++) {
    if (nums[i] != 0) {
      // Swap nums[insertPos] and nums[i]
      int temp = nums[insertPos];
      nums[insertPos] = nums[i];
      nums[i] = temp;

      insertPos++;
    }
  }

  return nums;
}
