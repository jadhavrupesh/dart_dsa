/// Problem: Find the Duplicate Number
/// Difficulty: Advanced
///
/// Problem Statement:
/// Given an array of integers `nums` containing `n + 1` integers where each integer is in the range `[1, n]` inclusive.
/// There is only one repeated number in `nums`, return this repeated number.
///
/// You must solve the problem without modifying the array `nums` and uses only constant extra space.
///
/// Input/Output Format:
/// - Input: A list of integers `nums`.
/// - Output: An integer representing the duplicate number.
///
/// Constraints:
/// - 1 <= n <= 10^5
/// - nums.length == n + 1
/// - 1 <= nums[i] <= n
/// - All integers in nums appear only once except for precisely one integer which appears two or more times.
///
/// Example Test Cases:
/// Case 1:
/// Input: [1, 3, 4, 2, 2]
/// Output: 2
///
/// Case 2:
/// Input: [3, 1, 3, 4, 2]
/// Output: 3
///
/// Progressive Hints:
/// 1. Sorting or Set would solve it easily but violate constraints (modify array or O(N) space).
/// 2. Treat the array as a Linked List where `index` points to `value`.
///    - `0 -> nums[0] -> nums[nums[0]] -> ...`
/// 3. Since there is a duplicate, there must be a cycle in this list.
/// 4. Use Floyd's Cycle Detection Algorithm (Tortoise and Hare).
///    - Phase 1: Find intersection point of slow and fast pointers.
///    - Phase 2: Find the entrance to the cycle.
///
/// Time Complexity Goal: O(N)
/// Space Complexity Goal: O(1)

void main() {
  print(solve([1, 3, 4, 2, 2])); // Expected: 2
  print(solve([3, 1, 3, 4, 2])); // Expected: 3
}

// TODO: Implement your solution here
int solve(List<int> nums) {
  return -1;
}
