/// Problem: Reverse an Array
/// Difficulty: Beginner
///
/// Problem Statement:
/// Given an array (or list) of integers, reverse the order of elements in-place.
/// That means you should not create a new array, but modify the existing one.
///
/// Input/Output Format:
/// - Input: A list of integers `nums`.
/// - Output: The same list, but reversed. (Return the list for convenience).
///
/// Constraints:
/// - 1 <= nums.length <= 1000
/// - -1000 <= nums[i] <= 1000
///
/// Example Test Cases:
/// Case 1:
/// Input: [1, 2, 3, 4, 5]
/// Output: [5, 4, 3, 2, 1]
///
/// Case 2:
/// Input: [10, 20]
/// Output: [20, 10]
///
/// Case 3:
/// Input: [7]
/// Output: [7]
///
/// Progressive Hints:
/// 1. You can swap the first and last elements.
/// 2. Then swap the second and second-to-last elements.
/// 3. Use two variables (pointers), one at the start and one at the end.
/// 4. Stop when the start pointer meets or crosses the end pointer.
///
/// Time Complexity Goal: O(N)
/// Space Complexity Goal: O(1)

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
  assert(Solution().solve([1, 2, 3, 4, 5]).toString() == "[5, 4, 3, 2, 1]");
  assert(Solution().solve([10, 20]).toString() == "[20, 10]");
  assert(Solution().solve([7]).toString() == "[7]");
  assert(Solution().solve([]).toString() == "[]");
  print("All test cases passed!");
}

class Solution {
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
}
