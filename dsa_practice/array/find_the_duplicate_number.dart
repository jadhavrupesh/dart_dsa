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

/// Solution for: Find the Duplicate Number
///
/// Approach Explanation:
/// We use **Floyd's Cycle Finding Algorithm** (Tortoise and Hare).
/// Since values are in range `[1, n]`, we can treat values as pointers to indices.
/// Because there is a duplicate, two indices point to the same value, creating a cycle.
///
/// Logic:
/// 1. **Phase 1**: Initialize `slow = nums[0]` and `fast = nums[0]`.
///    - Move `slow` by 1 step: `slow = nums[slow]`.
///    - Move `fast` by 2 steps: `fast = nums[nums[fast]]`.
///    - Repeat until `slow == fast`. This is the intersection point.
/// 2. **Phase 2**: Find the entrance to the cycle (the duplicate number).
///    - Reset `slow = nums[0]`. Keep `fast` at the intersection.
///    - Move both `slow` and `fast` by 1 step.
///    - The point where they meet is the duplicate number.
///
/// Time Complexity: O(N) - Linear pass.
/// Space Complexity: O(1) - No extra space.
///
/// Optimized Solution:

void main() {
  assert(Solution().solve([1, 3, 4, 2, 2]) == 2);
  assert(Solution().solve([3, 1, 3, 4, 2]) == 3);
  assert(Solution().solve([1, 1]) == 1);
  print("All test cases passed!");
}

class Solution {
  int solve(List<int> nums) {
    int slow = nums[0];
    int fast = nums[0];

    // Phase 1: Find intersection
    do {
      slow = nums[slow];
      fast = nums[nums[fast]];
    } while (slow != fast);

    // Phase 2: Find entrance
    slow = nums[0];
    while (slow != fast) {
      slow = nums[slow];
      fast = nums[fast];
    }

    return slow;
  }
}
