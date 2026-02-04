/// Problem: Sort Colors (Dutch National Flag)
/// Difficulty: Intermediate
///
/// Problem Statement:
/// Given an array `nums` with `n` objects colored red, white, or blue, sort them in-place so that objects of the same color are adjacent, with the colors in the order red, white, and blue.
/// We will use the integers 0, 1, and 2 to represent the color red, white, and blue, respectively.
///
/// You must solve this problem without using the library's sort function.
///
/// Input/Output Format:
/// - Input: A list of integers `nums` (containing only 0, 1, 2).
/// - Output: The sorted list.
///
/// Constraints:
/// - n == nums.length
/// - 1 <= n <= 300
/// - nums[i] is either 0, 1, or 2.
///
/// Example Test Cases:
/// Case 1:
/// Input: [2, 0, 2, 1, 1, 0]
/// Output: [0, 0, 1, 1, 2, 2]
///
/// Case 2:
/// Input: [2, 0, 1]
/// Output: [0, 1, 2]
///
/// Progressive Hints:
/// 1. Counting Sort: Count the number of 0s, 1s, and 2s, then overwrite the array. This is 2 passes. Can we do 1 pass?
/// 2. Use 3 pointers: `low`, `mid`, `high`.
/// 3. `low` tracks the boundary of 0s.
/// 4. `high` tracks the boundary of 2s.
/// 5. `mid` iterates through the array.
///    - If `nums[mid] == 0`: swap with `nums[low]`, increment `low` and `mid`.
///    - If `nums[mid] == 1`: just increment `mid`.
///    - If `nums[mid] == 2`: swap with `nums[high]`, decrement `high` (don't increment `mid` yet, check the swapped value).
///
/// Time Complexity Goal: O(N) - One pass.
/// Space Complexity Goal: O(1)

/// Solution for: Sort Colors
///
/// Approach Explanation:
/// We use the **Dutch National Flag Algorithm** (3-way partitioning).
/// - `low`: Pointer for 0s. Everything before `low` is 0.
/// - `mid`: Pointer for 1s. Everything between `low` and `mid` is 1.
/// - `high`: Pointer for 2s. Everything after `high` is 2.
///
/// Logic:
/// 1. Initialize `low = 0`, `mid = 0`, `high = n - 1`.
/// 2. While `mid <= high`:
///    - If `nums[mid] == 0`: Swap `nums[mid]` and `nums[low]`. Increment `low` and `mid`.
///    - If `nums[mid] == 1`: Just increment `mid`.
///    - If `nums[mid] == 2`: Swap `nums[mid]` and `nums[high]`. Decrement `high`.
///
/// Time Complexity: O(N) - Single pass.
/// Space Complexity: O(1).
///
/// Optimized Solution:

void main() {
  assert(Solution().solve([2, 0, 2, 1, 1, 0]).toString() == "[0, 0, 1, 1, 2, 2]");
  assert(Solution().solve([2, 0, 1]).toString() == "[0, 1, 2]");
  assert(Solution().solve([0]).toString() == "[0]");
  assert(Solution().solve([1]).toString() == "[1]");
  print("All test cases passed!");
}

class Solution {
  List<int> solve(List<int> nums) {
    int low = 0;
    int mid = 0;
    int high = nums.length - 1;

    while (mid <= high) {
      if (nums[mid] == 0) {
        // Swap with low
        int temp = nums[low];
        nums[low] = nums[mid];
        nums[mid] = temp;
        low++;
        mid++;
      } else if (nums[mid] == 1) {
        mid++;
      } else {
        // Swap with high
        int temp = nums[high];
        nums[high] = nums[mid];
        nums[mid] = temp;
        high--;
      }
    }

    return nums;
  }
}
