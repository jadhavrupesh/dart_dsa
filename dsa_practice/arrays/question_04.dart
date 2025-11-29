/// Problem: Check if Array is Sorted
/// Difficulty: Beginner
///
/// Problem Statement:
/// Given an array of integers, check if it is sorted in non-decreasing order.
/// Return `true` if it is sorted, `false` otherwise.
///
/// Input/Output Format:
/// - Input: A list of integers `nums`.
/// - Output: A boolean value.
///
/// Constraints:
/// - 1 <= nums.length <= 1000
/// - -10^9 <= nums[i] <= 10^9
///
/// Example Test Cases:
/// Case 1:
/// Input: [1, 2, 3, 4, 5]
/// Output: true
///
/// Case 2:
/// Input: [1, 2, 5, 3, 4]
/// Output: false
///
/// Case 3:
/// Input: [1, 1, 1]
/// Output: true
///
/// Progressive Hints:
/// 1. Iterate through the array from the first element up to the second-to-last element.
/// 2. Compare the current element `nums[i]` with the next element `nums[i+1]`.
/// 3. If `nums[i] > nums[i+1]`, the order is broken.
///
/// Time Complexity Goal: O(N)
/// Space Complexity Goal: O(1)

void main() {
  print(solve([1, 2, 3, 4, 5])); // Expected: true
  print(solve([1, 2, 5, 3, 4])); // Expected: false
  print(solve([1, 1, 1])); // Expected: true
}

// TODO: Implement your solution here
bool solve(List<int> nums) {
  return false;
}
