/// Problem: Remove Duplicates from Sorted Array
/// Difficulty: Beginner
///
/// Problem Statement:
/// Given a sorted array `nums`, remove the duplicates in-place such that each element appears only once.
/// The relative order of the elements should be kept the same.
///
/// Return the number of unique elements (let's call it `k`).
/// The first `k` elements of `nums` should hold the unique elements.
/// It does not matter what you leave beyond the first `k` elements.
///
/// Input/Output Format:
/// - Input: A sorted list of integers `nums`.
/// - Output: An integer `k` (count of unique elements).
///
/// Constraints:
/// - 1 <= nums.length <= 3 * 10^4
/// - -100 <= nums[i] <= 100
/// - nums is sorted in non-decreasing order.
///
/// Example Test Cases:
/// Case 1:
/// Input: [1, 1, 2]
/// Output: 2 (and nums becomes [1, 2, ...])
///
/// Case 2:
/// Input: [0, 0, 1, 1, 1, 2, 2, 3, 3, 4]
/// Output: 5 (and nums becomes [0, 1, 2, 3, 4, ...])
///
/// Progressive Hints:
/// 1. Since the array is sorted, duplicates will be grouped together.
/// 2. Use a Two Pointer approach: `i` (slow) and `j` (fast).
/// 3. `i` points to the last unique element found so far.
/// 4. `j` scans for new unique elements.
/// 5. If `nums[j]` is different from `nums[i]`, increment `i` and update `nums[i] = nums[j]`.
///
/// Time Complexity Goal: O(N)
/// Space Complexity Goal: O(1)

/// Solution for: Remove Duplicates from Sorted Array
///
/// Approach Explanation:
/// We use the **Two Pointer** technique.
/// - `i` tracks the position of the last unique element.
/// - `j` iterates through the array to find new unique elements.
///
/// Logic:
/// 1. Start `i` at 0.
/// 2. Loop `j` from 1 to `nums.length - 1`.
/// 3. If `nums[j]` is different from `nums[i]`:
///    - We found a new unique element.
///    - Increment `i`.
///    - Copy `nums[j]` to `nums[i]`.
/// 4. If `nums[j]` is the same as `nums[i]`, just ignore it (it's a duplicate).
/// 5. The number of unique elements is `i + 1`.
///
/// Time Complexity: O(N) - Single pass.
/// Space Complexity: O(1) - In-place modification.
///
/// Optimized Solution:

void main() {
  List<int> t1 = [1, 1, 2];
  assert(Solution().solve(t1) == 2);
  assert(t1.sublist(0, 2).toString() == "[1, 2]");

  List<int> t2 = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4];
  assert(Solution().solve(t2) == 5);
  assert(t2.sublist(0, 5).toString() == "[0, 1, 2, 3, 4]");

  print("All test cases passed!");
}

class Solution {
  int solve(List<int> nums) {
    if (nums.isEmpty) return 0;

    int i = 0;
    for (int j = 1; j < nums.length; j++) {
      if (nums[j] != nums[i]) {
        i++;
        nums[i] = nums[j];
      }
    }

    return i + 1;
  }
}
