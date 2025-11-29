/// Problem: Majority Element
/// Difficulty: Intermediate
///
/// Problem Statement:
/// Given an array `nums` of size `n`, return the majority element.
/// The majority element is the element that appears more than `⌊n / 2⌋` times.
/// You may assume that the majority element always exists in the array.
///
/// Input/Output Format:
/// - Input: A list of integers `nums`.
/// - Output: An integer representing the majority element.
///
/// Constraints:
/// - n == nums.length
/// - 1 <= n <= 5 * 10^4
/// - -10^9 <= nums[i] <= 10^9
///
/// Example Test Cases:
/// Case 1:
/// Input: [3, 2, 3]
/// Output: 3
///
/// Case 2:
/// Input: [2, 2, 1, 1, 1, 2, 2]
/// Output: 2
///
/// Progressive Hints:
/// 1. Brute Force: Count occurrences of each element. O(N^2).
/// 2. HashMap: Store counts in a map. O(N) time, O(N) space.
/// 3. Sorting: Sort and pick the middle element `nums[n/2]`. O(N log N).
/// 4. Boyer-Moore Voting Algorithm:
///    - Maintain a `candidate` and a `count`.
///    - If `count == 0`, set `candidate = current`.
///    - If `current == candidate`, increment `count`.
///    - Else, decrement `count`.
///
/// Time Complexity Goal: O(N)
/// Space Complexity Goal: O(1)

void main() {
  print(solve([3, 2, 3])); // Expected: 3
  print(solve([2, 2, 1, 1, 1, 2, 2])); // Expected: 2
}

// TODO: Implement your solution here
int solve(List<int> nums) {
  return -1;
}
