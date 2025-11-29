/// Problem: Linear Search
/// Difficulty: Beginner
///
/// Problem Statement:
/// Given an array `nums` and an integer `target`, find the index of the first occurrence of `target` in `nums`.
/// If `target` is not found, return -1.
///
/// Input/Output Format:
/// - Input: A list of integers `nums` and an integer `target`.
/// - Output: An integer representing the index.
///
/// Constraints:
/// - 1 <= nums.length <= 1000
/// - -10^5 <= nums[i], target <= 10^5
///
/// Example Test Cases:
/// Case 1:
/// Input: nums = [1, 2, 3, 4, 5], target = 3
/// Output: 2
///
/// Case 2:
/// Input: nums = [10, 20, 30], target = 25
/// Output: -1
///
/// Progressive Hints:
/// 1. Iterate through the array from index 0 to the end.
/// 2. Check if the current element equals the target.
/// 3. If yes, return the current index immediately.
/// 4. If the loop finishes without finding the target, return -1.
///
/// Time Complexity Goal: O(N)
/// Space Complexity Goal: O(1)

void main() {
  print(solve([1, 2, 3, 4, 5], 3)); // Expected: 2
  print(solve([10, 20, 30], 25)); // Expected: -1
}

// TODO: Implement your solution here
int solve(List<int> nums, int target) {
  return -1;
}
