/// Problem: Reverse Pairs
/// Difficulty: Advanced
///
/// Problem Statement:
/// Given an integer array `nums`, return the number of reverse pairs in the array.
/// A reverse pair is a pair `(i, j)` where:
/// - `0 <= i < j < nums.length`
/// - `nums[i] > 2 * nums[j]`
///
/// Input/Output Format:
/// - Input: A list of integers `nums`.
/// - Output: An integer representing the count.
///
/// Constraints:
/// - 1 <= nums.length <= 5 * 10^4
/// - -2^31 <= nums[i] <= 2^31 - 1
///
/// Example Test Cases:
/// Case 1:
/// Input: [1, 3, 2, 3, 1]
/// Output: 2
/// Explanation: The pairs are (1, 4) -> 3 > 2*1 and (3, 4) -> 3 > 2*1.
///
/// Case 2:
/// Input: [2, 4, 3, 5, 1]
/// Output: 3
/// Explanation: (1, 4) -> 4 > 2*1, (2, 4) -> 3 > 2*1, (3, 4) -> 5 > 2*1.
///
/// Progressive Hints:
/// 1. Brute force is O(N^2). Too slow.
/// 2. This is similar to counting inversions (Merge Sort).
/// 3. In Merge Sort, before merging two sorted halves `left` and `right`:
///    - Iterate through `left` with `i` and `right` with `j`.
///    - If `nums[i] > 2 * nums[j]`, then all elements after `i` in the left half will also satisfy the condition (since left is sorted).
///    - Count these pairs.
/// 4. Then perform the standard merge step.
///
/// Time Complexity Goal: O(N log N)
/// Space Complexity Goal: O(N)

void main() {
  print(solve([1, 3, 2, 3, 1])); // Expected: 2
  print(solve([2, 4, 3, 5, 1])); // Expected: 3
}

// TODO: Implement your solution here
int solve(List<int> nums) {
  return 0;
}
