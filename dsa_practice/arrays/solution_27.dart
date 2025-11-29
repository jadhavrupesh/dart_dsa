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
  print(solve([1, 0, -1, 0, -2, 2], 0));
  print(solve([2, 2, 2, 2, 2], 8));
}

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
