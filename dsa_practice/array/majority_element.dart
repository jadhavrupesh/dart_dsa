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

/// Solution for: Majority Element
///
/// Approach Explanation:
/// We use the **Boyer-Moore Voting Algorithm**.
/// The intuition is that if we cancel out each occurrence of a non-majority element with a majority element, the majority element will still remain because it appears more than `n/2` times.
///
/// Logic:
/// 1. Initialize `candidate = null` and `count = 0`.
/// 2. Iterate through `nums`:
///    - If `count == 0`, `candidate = num`.
///    - If `num == candidate`, `count++`.
///    - Else, `count--`.
/// 3. The final `candidate` is the majority element.
///
/// Time Complexity: O(N) - Single pass.
/// Space Complexity: O(1).
///
/// Optimized Solution:

void main() {
  assert(Solution().solve([3, 2, 3]) == 3);
  assert(Solution().solve([2, 2, 1, 1, 1, 2, 2]) == 2);
  assert(Solution().solve([1]) == 1);
  print("All test cases passed!");
}

class Solution {
  int solve(List<int> nums) {
    int candidate = 0;
    int count = 0;

    for (int num in nums) {
      if (count == 0) {
        candidate = num;
      }

      if (num == candidate) {
        count++;
      } else {
        count--;
      }
    }

    return candidate;
  }
}
