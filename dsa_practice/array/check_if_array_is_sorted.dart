/// Problem: Check if Array is Sorted
/// Difficulty: Beginner
///
/// Problem Statement:
/// Given an array of integers, check if it is sorted in non-decreasing order.
/// Return `true` if it is sorted, `false` otherwise.
///
/// Input/Output Format:
/// - Input: A list of integers `nums`.
/// - Output: A boolean value.
///
/// Constraints:
/// - 1 <= nums.length <= 1000
/// - -10^9 <= nums[i] <= 10^9
///
/// Example Test Cases:
/// Case 1:
/// Input: [1, 2, 3, 4, 5]
/// Output: true
///
/// Case 2:
/// Input: [1, 2, 5, 3, 4]
/// Output: false
///
/// Case 3:
/// Input: [1, 1, 1]
/// Output: true
///
/// Progressive Hints:
/// 1. Iterate through the array from the first element up to the second-to-last element.
/// 2. Compare the current element `nums[i]` with the next element `nums[i+1]`.
/// 3. If `nums[i] > nums[i+1]`, the order is broken.
///
/// Time Complexity Goal: O(N)
/// Space Complexity Goal: O(1)

/// Solution for: Check if Array is Sorted
///
/// Approach Explanation:
/// We simply iterate through the array and check if every element is less than or equal to the next element.
/// If we find any pair where `nums[i] > nums[i+1]`, we immediately return `false`.
/// If we finish the loop without finding such a pair, the array is sorted, so we return `true`.
///
/// Step-by-Step Logic:
/// 1. Loop `i` from 0 to `nums.length - 2`.
/// 2. Check `if (nums[i] > nums[i+1]) return false`.
/// 3. Return `true` at the end.
///
/// Time Complexity: O(N) - Single pass.
/// Space Complexity: O(1) - No extra space.
///
/// Optimized Solution:

void main() {
  assert(Solution().solve([1, 2, 3, 4, 5]) == true);
  assert(Solution().solve([1, 2, 5, 3, 4]) == false);
  assert(Solution().solve([1, 1, 1]) == true);
  assert(Solution().solve([5, 4, 3, 2, 1]) == false);
  assert(Solution().solve([10]) == true);
  print("All test cases passed!");
}

class Solution {
  bool solve(List<int> nums) {
    for (int i = 0; i < nums.length - 1; i++) {
      if (nums[i] > nums[i + 1]) {
        return false;
      }
    }
    return true;
  }
}
