/// Problem: 4Sum
/// Difficulty: Advanced
///
/// Problem Statement:
/// Given an array `nums` of `n` integers, return an array of all the unique quadruplets `[nums[a], nums[b], nums[c], nums[d]]` such that:
/// - `0 <= a, b, c, d < n`
/// - `a, b, c, d` are distinct.
/// - `nums[a] + nums[b] + nums[c] + nums[d] == target`
///
/// You may return the answer in any order.
///
/// Input/Output Format:
/// - Input: A list of integers `nums` and an integer `target`.
/// - Output: A list of lists representing quadruplets.
///
/// Constraints:
/// - 1 <= nums.length <= 200
/// - -10^9 <= nums[i] <= 10^9
/// - -10^9 <= target <= 10^9
///
/// Example Test Cases:
/// Case 1:
/// Input: nums = [1,0,-1,0,-2,2], target = 0
/// Output: [[-2,-1,1,2],[-2,0,0,2],[-1,0,0,1]]
///
/// Case 2:
/// Input: nums = [2,2,2,2,2], target = 8
/// Output: [[2,2,2,2]]
///
/// Progressive Hints:
/// 1. This is an extension of 3Sum.
/// 2. Sort the array.
/// 3. Use two nested loops for the first two numbers (`i` and `j`).
/// 4. Use Two Pointers (`left` and `right`) for the remaining two numbers.
/// 5. Be careful with duplicates. Skip `nums[i] == nums[i-1]` and `nums[j] == nums[j-1]`.
/// 6. Also skip duplicates for `left` and `right` after finding a match.
/// 7. Watch out for integer overflow if the sum exceeds 32-bit integer limits (though Dart uses 64-bit integers for `int`, so it's fine, but good to know for other languages).
///
/// Time Complexity Goal: O(N^3)
/// Space Complexity Goal: O(1) (excluding output)

void main() {
  print(solve([1, 0, -1, 0, -2, 2], 0)); // Expected: [[-2,-1,1,2],[-2,0,0,2],[-1,0,0,1]]
  print(solve([2, 2, 2, 2, 2], 8)); // Expected: [[2,2,2,2]]
}

// TODO: Implement your solution here
List<List<int>> solve(List<int> nums, int target) {
  return [];
}
