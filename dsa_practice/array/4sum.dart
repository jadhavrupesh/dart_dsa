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

/// Solution for: 4Sum
///
/// Approach Explanation:
/// We extend the 3Sum approach (Sorting + Two Pointers).
/// 1. Sort the array.
/// 2. Iterate `i` from 0 to `n-4`.
/// 3. Iterate `j` from `i+1` to `n-3`.
/// 4. Use Two Pointers `left = j+1` and `right = n-1`.
/// 5. Calculate `sum = nums[i] + nums[j] + nums[left] + nums[right]`.
/// 6. If `sum == target`, add to result and skip duplicates.
/// 7. If `sum < target`, `left++`.
/// 8. If `sum > target`, `right--`.
///
/// Time Complexity: O(N^3) - Two nested loops + one linear two-pointer pass.
/// Space Complexity: O(1) - Ignoring output.
///
/// Optimized Solution:

void main() {
  print(Solution().solve([1, 0, -1, 0, -2, 2], 0));
  print(Solution().solve([2, 2, 2, 2, 2], 8));
}

class Solution {
  List<List<int>> solve(List<int> nums, int target) {
    nums.sort();
    List<List<int>> result = [];
    int n = nums.length;

    for (int i = 0; i < n - 3; i++) {
      if (i > 0 && nums[i] == nums[i - 1]) continue; // Skip duplicates for i

      for (int j = i + 1; j < n - 2; j++) {
        if (j > i + 1 && nums[j] == nums[j - 1]) continue; // Skip duplicates for j

        int left = j + 1;
        int right = n - 1;

        while (left < right) {
          // Use int in Dart (64-bit), so overflow is less of an issue than in C++/Java
          int sum = nums[i] + nums[j] + nums[left] + nums[right];

          if (sum == target) {
            result.add([nums[i], nums[j], nums[left], nums[right]]);
            left++;
            right--;

            while (left < right && nums[left] == nums[left - 1]) left++;
            while (left < right && nums[right] == nums[right + 1]) right--;
          } else if (sum < target) {
            left++;
          } else {
            right--;
          }
        }
      }
    }

    return result;
  }
}
