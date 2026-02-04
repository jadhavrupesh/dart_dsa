/// Problem: Rearrange Array Elements by Sign
/// Difficulty: Intermediate
///
/// Problem Statement:
/// You are given a 0-indexed integer array `nums` of even length consisting of an equal number of positive and negative integers.
/// You should rearrange the elements of `nums` such that the modified array follows the given conditions:
/// 1. Every consecutive pair of integers have opposite signs.
/// 2. For all integers with the same sign, the order in which they were present in `nums` is preserved.
/// 3. The rearranged array begins with a positive integer.
///
/// Input/Output Format:
/// - Input: A list of integers `nums`.
/// - Output: The rearranged list.
///
/// Constraints:
/// - 2 <= nums.length <= 2 * 10^5
/// - nums.length is even.
/// - nums[i] != 0
///
/// Example Test Cases:
/// Case 1:
/// Input: [3, 1, -2, -5, 2, -4]
/// Output: [3, -2, 1, -5, 2, -4]
/// Explanation:
/// Positives: [3, 1, 2]
/// Negatives: [-2, -5, -4]
/// Merged: [3, -2, 1, -5, 2, -4]
///
/// Case 2:
/// Input: [-1, 1]
/// Output: [1, -1]
///
/// Progressive Hints:
/// 1. Create a new result array of the same size.
/// 2. Maintain two pointers: `posIndex` starting at 0, and `negIndex` starting at 1.
/// 3. Iterate through the original array.
/// 4. If the number is positive, place it at `result[posIndex]` and increment `posIndex` by 2.
/// 5. If the number is negative, place it at `result[negIndex]` and increment `negIndex` by 2.
///
/// Time Complexity Goal: O(N)
/// Space Complexity Goal: O(N) (Since we need a new array to preserve order easily)

/// Solution for: Rearrange Array Elements by Sign
///
/// Approach Explanation:
/// We need to place positives at even indices (0, 2, 4...) and negatives at odd indices (1, 3, 5...).
/// Since we need to preserve the original order, we can iterate through the array once and place elements directly into their correct positions in a new array.
///
/// Logic:
/// 1. Create a `result` array of size `n`.
/// 2. Initialize `posIndex = 0` and `negIndex = 1`.
/// 3. Loop through `nums`:
///    - If `num > 0`: `result[posIndex] = num`, `posIndex += 2`.
///    - If `num < 0`: `result[negIndex] = num`, `negIndex += 2`.
///
/// Time Complexity: O(N) - Single pass.
/// Space Complexity: O(N) - For the result array.
///
/// Optimized Solution:

void main() {
  assert(Solution().solve([3, 1, -2, -5, 2, -4]).toString() == "[3, -2, 1, -5, 2, -4]");
  assert(Solution().solve([-1, 1]).toString() == "[1, -1]");
  print("All test cases passed!");
}

class Solution {
  List<int> solve(List<int> nums) {
    int n = nums.length;
    List<int> result = List.filled(n, 0);
    int posIndex = 0;
    int negIndex = 1;

    for (int num in nums) {
      if (num > 0) {
        result[posIndex] = num;
        posIndex += 2;
      } else {
        result[negIndex] = num;
        negIndex += 2;
      }
    }

    return result;
  }
}
