/// Problem: Next Permutation
/// Difficulty: Intermediate
///
/// Problem Statement:
/// A permutation of an array of integers is an arrangement of its members into a sequence or linear order.
/// The "next permutation" of an array of integers is the next lexicographically greater permutation of its integer.
/// If such an arrangement is not possible, the array must be rearranged as the lowest possible order (i.e., sorted in ascending order).
///
/// The replacement must be in place and use only constant extra memory.
///
/// Input/Output Format:
/// - Input: A list of integers `nums`.
/// - Output: The modified list.
///
/// Constraints:
/// - 1 <= nums.length <= 100
/// - 0 <= nums[i] <= 100
///
/// Example Test Cases:
/// Case 1:
/// Input: [1, 2, 3]
/// Output: [1, 3, 2]
///
/// Case 2:
/// Input: [3, 2, 1]
/// Output: [1, 2, 3]
///
/// Case 3:
/// Input: [1, 1, 5]
/// Output: [1, 5, 1]
///
/// Progressive Hints:
/// 1. Find the first decreasing element from the right. Let's call its index `i`.
///    - Iterate backwards from `n-2`. Find first `i` where `nums[i] < nums[i+1]`.
/// 2. If no such element exists (array is descending), reverse the whole array.
/// 3. If found, find the smallest number greater than `nums[i]` to its right. Let's call its index `j`.
///    - Iterate backwards from `n-1`. Find first `j` where `nums[j] > nums[i]`.
/// 4. Swap `nums[i]` and `nums[j]`.
/// 5. Reverse the subarray to the right of `i` (from `i+1` to end).
///
/// Time Complexity Goal: O(N)
/// Space Complexity Goal: O(1)

void main() {
  List<int> test1 = [1, 2, 3];
  print("Original: \$test1");
  print("Next: \${solve(test1)}"); // Expected: [1, 3, 2]

  List<int> test2 = [3, 2, 1];
  print("Original: \$test2");
  print("Next: \${solve(test2)}"); // Expected: [1, 2, 3]
}

// TODO: Implement your solution here
List<int> solve(List<int> nums) {
  return nums;
}
