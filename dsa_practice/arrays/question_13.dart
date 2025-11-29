/// Problem: Rotate Array by K
/// Difficulty: Intermediate
///
/// Problem Statement:
/// Given an integer array `nums`, rotate the array to the right by `k` steps, where `k` is non-negative.
///
/// Input/Output Format:
/// - Input: A list of integers `nums` and an integer `k`.
/// - Output: The modified list.
///
/// Constraints:
/// - 1 <= nums.length <= 10^5
/// - -2^31 <= nums[i] <= 2^31 - 1
/// - 0 <= k <= 10^5
///
/// Example Test Cases:
/// Case 1:
/// Input: nums = [1, 2, 3, 4, 5, 6, 7], k = 3
/// Output: [5, 6, 7, 1, 2, 3, 4]
///
/// Case 2:
/// Input: nums = [-1, -100, 3, 99], k = 2
/// Output: [3, 99, -1, -100]
///
/// Progressive Hints:
/// 1. If `k` is greater than `nums.length`, then `k = k % nums.length`.
/// 2. Brute force: Rotate by 1 step `k` times. Time O(N*K). Too slow.
/// 3. Extra Space: Create a new array and place elements at `(i + k) % n`. Time O(N), Space O(N). Can we do O(1) space?
/// 4. Reversal Algorithm:
///    - Reverse the entire array.
///    - Reverse the first `k` elements.
///    - Reverse the remaining `n - k` elements.
///
/// Time Complexity Goal: O(N)
/// Space Complexity Goal: O(1)

void main() {
  List<int> test1 = [1, 2, 3, 4, 5, 6, 7];
  print("Original: \$test1");
  print("Rotated: \${solve(test1, 3)}"); // Expected: [5, 6, 7, 1, 2, 3, 4]

  List<int> test2 = [-1, -100, 3, 99];
  print("Original: \$test2");
  print("Rotated: \${solve(test2, 2)}"); // Expected: [3, 99, -1, -100]
}

// TODO: Implement your solution here
List<int> solve(List<int> nums, int k) {
  return nums;
}
