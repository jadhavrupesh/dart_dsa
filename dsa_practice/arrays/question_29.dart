/// Problem: Count Inversions
/// Difficulty: Advanced
///
/// Problem Statement:
/// Given an array of integers, count the number of inversions.
/// An inversion occurs if `i < j` but `nums[i] > nums[j]`.
///
/// Input/Output Format:
/// - Input: A list of integers `nums`.
/// - Output: An integer representing the count.
///
/// Constraints:
/// - 1 <= nums.length <= 10^5
/// - -10^9 <= nums[i] <= 10^9
///
/// Example Test Cases:
/// Case 1:
/// Input: [2, 4, 1, 3, 5]
/// Output: 3
/// Explanation: (2, 1), (4, 1), (4, 3).
///
/// Case 2:
/// Input: [5, 4, 3, 2, 1]
/// Output: 10
///
/// Progressive Hints:
/// 1. Brute force is O(N^2).
/// 2. Use Merge Sort.
/// 3. During the merge step, if `nums[left] > nums[right]`, it means `nums[left]` and all elements after it in the left subarray are greater than `nums[right]`.
/// 4. So, `count += (mid - left + 1)`.
///
/// Time Complexity Goal: O(N log N)
/// Space Complexity Goal: O(N)

void main() {
  print(solve([2, 4, 1, 3, 5])); // Expected: 3
  print(solve([5, 4, 3, 2, 1])); // Expected: 10
}

// TODO: Implement your solution here
int solve(List<int> nums) {
  return 0;
}
