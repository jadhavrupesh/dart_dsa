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

void main() {
  List<int> test1 = [1, 1, 2];
  int k1 = solve(test1);
  print("Count: \$k1, Array: \${test1.sublist(0, k1)}"); // Expected: 2, [1, 2]

  List<int> test2 = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4];
  int k2 = solve(test2);
  print("Count: \$k2, Array: \${test2.sublist(0, k2)}"); // Expected: 5, [0, 1, 2, 3, 4]
}

// TODO: Implement your solution here
int solve(List<int> nums) {
  return 0;
}
