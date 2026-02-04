/// Problem: Linear Search
/// Difficulty: Beginner
///
/// Problem Statement:
/// Given an array `nums` and an integer `target`, find the index of the first occurrence of `target` in `nums`.
/// If `target` is not found, return -1.
///
/// Input/Output Format:
/// - Input: A list of integers `nums` and an integer `target`.
/// - Output: An integer representing the index.
///
/// Constraints:
/// - 1 <= nums.length <= 1000
/// - -10^5 <= nums[i], target <= 10^5
///
/// Example Test Cases:
/// Case 1:
/// Input: nums = [1, 2, 3, 4, 5], target = 3
/// Output: 2
///
/// Case 2:
/// Input: nums = [10, 20, 30], target = 25
/// Output: -1
///
/// Progressive Hints:
/// 1. Iterate through the array from index 0 to the end.
/// 2. Check if the current element equals the target.
/// 3. If yes, return the current index immediately.
/// 4. If the loop finishes without finding the target, return -1.
///
/// Time Complexity Goal: O(N)
/// Space Complexity Goal: O(1)

/// Solution for: Linear Search
///
/// Approach Explanation:
/// This is the most basic search algorithm. We simply traverse the array element by element.
/// If we find a match, we return the index. If we reach the end, the element is not there.
///
/// Time Complexity: O(N) - Worst case we check every element.
/// Space Complexity: O(1) - No extra space.
///
/// Optimized Solution:

void main() {
  assert(Solution().solve([1, 2, 3, 4, 5], 3) == 2);
  assert(Solution().solve([10, 20, 30], 25) == -1);
  assert(Solution().solve([5], 5) == 0);
  assert(Solution().solve([], 1) == -1);
  print("All test cases passed!");
}

class Solution {
  int solve(List<int> nums, int target) {
    for (int i = 0; i < nums.length; i++) {
      if (nums[i] == target) {
        return i;
      }
    }
    return -1;
  }
}
