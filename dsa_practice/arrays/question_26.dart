/// Problem: Longest Consecutive Sequence
/// Difficulty: Advanced
///
/// Problem Statement:
/// Given an unsorted array of integers `nums`, return the length of the longest consecutive elements sequence.
/// You must write an algorithm that runs in O(n) time.
///
/// Input/Output Format:
/// - Input: A list of integers `nums`.
/// - Output: An integer representing the length.
///
/// Constraints:
/// - 0 <= nums.length <= 10^5
/// - -10^9 <= nums[i] <= 10^9
///
/// Example Test Cases:
/// Case 1:
/// Input: [100, 4, 200, 1, 3, 2]
/// Output: 4
/// Explanation: The longest consecutive elements sequence is [1, 2, 3, 4]. Therefore its length is 4.
///
/// Case 2:
/// Input: [0, 3, 7, 2, 5, 8, 4, 6, 0, 1]
/// Output: 9
///
/// Progressive Hints:
/// 1. Sorting takes O(N log N), which is not allowed.
/// 2. Use a HashSet to store all elements for O(1) lookups.
/// 3. Iterate through the set. For each number `num`:
///    - Check if `num - 1` exists in the set.
///    - If it does, then `num` is NOT the start of a sequence. Skip it.
///    - If it doesn't, then `num` IS the start of a sequence.
/// 4. If it is the start, keep checking for `num + 1`, `num + 2`, etc., in the set and count the length.
/// 5. Update the max length.
///
/// Time Complexity Goal: O(N)
/// Space Complexity Goal: O(N)

void main() {
  print(solve([100, 4, 200, 1, 3, 2])); // Expected: 4
  print(solve([0, 3, 7, 2, 5, 8, 4, 6, 0, 1])); // Expected: 9
}

// TODO: Implement your solution here
int solve(List<int> nums) {
  return 0;
}
