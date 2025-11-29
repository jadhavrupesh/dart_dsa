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
  assert(solve([1, 3, 4, 2, 2]) == 2);
  assert(solve([3, 1, 3, 4, 2]) == 3);
  assert(solve([1, 1]) == 1);
  print("All test cases passed!");
}

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
