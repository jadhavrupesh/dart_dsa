/// Problem: Move Zeroes
/// Difficulty: Beginner
///
/// Problem Statement:
/// Given an integer array `nums`, move all `0`s to the end of it while maintaining
/// the relative order of the non-zero elements.
///
/// Note that you must do this in-place without making a copy of the array.
///
/// Input/Output Format:
/// - Input: A list of integers `nums`.
/// - Output: The modified list with zeroes at the end.
///
/// Constraints:
/// - 1 <= nums.length <= 10^4
/// - -2^31 <= nums[i] <= 2^31 - 1
///
/// Example Test Cases:
/// Case 1:
/// Input: [0, 1, 0, 3, 12]
/// Output: [1, 3, 12, 0, 0]
///
/// Case 2:
/// Input: [0]
/// Output: [0]
///
/// Case 3:
/// Input: [1, 2, 3]
/// Output: [1, 2, 3]
///
/// Progressive Hints:
/// 1. You need to keep track of where the next non-zero element should go.
/// 2. Use a pointer (let's call it `insertPos`) starting at 0.
/// 3. Iterate through the array with another pointer (loop variable).
/// 4. If you find a non-zero element, place it at `insertPos` and increment `insertPos`.
/// 5. After the loop, fill the rest of the array (from `insertPos` to end) with zeroes.
///
/// Time Complexity Goal: O(N)
/// Space Complexity Goal: O(1)

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
  assert(Solution().solve([0, 1, 0, 3, 12]).toString() == "[1, 3, 12, 0, 0]");
  assert(Solution().solve([0]).toString() == "[0]");
  assert(Solution().solve([1, 2, 3]).toString() == "[1, 2, 3]");
  assert(Solution().solve([0, 0, 1]).toString() == "[1, 0, 0]");
  print("All test cases passed!");
}

class Solution {
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
}
