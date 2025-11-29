/// Solution for: 3Sum
///
/// Approach Explanation:
/// The brute force approach is O(N^3), which is too slow.
/// We can optimize this to O(N^2) using **Sorting + Two Pointers**.
///
/// 1. **Sort** the array. This allows us to skip duplicates easily and use the two-pointer logic.
/// 2. Iterate through the array with index `i` from `0` to `n-2`.
///    - If `nums[i] > 0`, we can stop because all subsequent numbers are also positive (since sorted), so no sum can be 0.
///    - If `i > 0` and `nums[i] == nums[i-1]`, skip this iteration to avoid duplicate triplets (we already processed this number as the first element).
/// 3. For each `i`, use Two Pointers `left = i + 1` and `right = n - 1`.
///    - Calculate `sum = nums[i] + nums[left] + nums[right]`.
///    - If `sum < 0`, we need a larger sum, so increment `left`.
///    - If `sum > 0`, we need a smaller sum, so decrement `right`.
///    - If `sum == 0`, we found a triplet! Add it to the result.
///      - Then, skip duplicates for `left` and `right` to ensure uniqueness.
///      - Move both pointers inward.
///
/// Time Complexity: O(N^2) - Sorting is O(N log N), and the nested loop + two pointers is O(N^2).
/// Space Complexity: O(1) or O(N) - Depending on the sorting algorithm's space usage. We ignore the space for the output list.
///
/// Optimized Solution:

void main() {
  // Helper to compare lists of lists for testing
  bool compare(List<List<int>> a, List<List<int>> b) {
    if (a.length != b.length) return false;
    // Simple check: convert to string and check containment (not robust for all orders but works for simple cases)
    // For robust testing, we'd sort inner lists and the outer list.
    // Here we just print for verification.
    return true;
  }

  print(solve([-1, 0, 1, 2, -1, -4])); // [[-1, -1, 2], [-1, 0, 1]]
  print(solve([0, 1, 1])); // []
  print(solve([0, 0, 0])); // [[0, 0, 0]]
}

List<List<int>> solve(List<int> nums) {
  nums.sort(); // Step 1: Sort
  List<List<int>> result = [];

  for (int i = 0; i < nums.length - 2; i++) {
    // Optimization: If current number is positive, we can't find a sum of 0
    if (nums[i] > 0) break;

    // Skip duplicates for the first element
    if (i > 0 && nums[i] == nums[i - 1]) continue;

    int left = i + 1;
    int right = nums.length - 1;

    while (left < right) {
      int sum = nums[i] + nums[left] + nums[right];

      if (sum < 0) {
        left++;
      } else if (sum > 0) {
        right--;
      } else {
        // Found a triplet
        result.add([nums[i], nums[left], nums[right]]);

        // Skip duplicates for the second element
        while (left < right && nums[left] == nums[left + 1]) left++;
        // Skip duplicates for the third element
        while (left < right && nums[right] == nums[right - 1]) right--;

        left++;
        right--;
      }
    }
  }

  return result;
}
