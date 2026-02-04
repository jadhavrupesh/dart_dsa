/// Problem: Second Largest Element
/// Difficulty: Beginner
///
/// Problem Statement:
/// Given an array of integers, find the second largest element.
/// If there is no second largest element (e.g., all elements are same or array size < 2), return -1.
///
/// Input/Output Format:
/// - Input: A list of integers `nums`.
/// - Output: An integer representing the second largest value.
///
/// Constraints:
/// - 1 <= nums.length <= 1000
/// - 0 <= nums[i] <= 1000
///
/// Example Test Cases:
/// Case 1:
/// Input: [12, 35, 1, 10, 34, 1]
/// Output: 34
///
/// Case 2:
/// Input: [10, 5, 10]
/// Output: 5
///
/// Case 3:
/// Input: [10, 10, 10]
/// Output: -1
///
/// Progressive Hints:
/// 1. You can sort the array and pick the second last unique element, but that takes O(N log N).
/// 2. Better approach: Use two variables, `largest` and `secondLargest`.
/// 3. Initialize them to -1 (or a very small number).
/// 4. Iterate through the array:
///    - If `current > largest`: update `secondLargest = largest`, then `largest = current`.
///    - Else if `current > secondLargest` AND `current != largest`: update `secondLargest = current`.
///
/// Time Complexity Goal: O(N)
/// Space Complexity Goal: O(1)

/// Solution for: Second Largest Element
///
/// Approach Explanation:
/// We maintain two variables: `largest` and `secondLargest`.
/// We iterate through the array once.
/// - If `num > largest`:
///   - The old `largest` becomes the new `secondLargest`.
///   - The `num` becomes the new `largest`.
/// - If `num > secondLargest` AND `num < largest`:
///   - The `num` becomes the new `secondLargest`.
///   - We check `num < largest` to avoid treating a duplicate of the largest as the second largest (unless the problem allows it, but standard definition implies strictly smaller).
///
/// Time Complexity: O(N) - Single pass.
/// Space Complexity: O(1).
///
/// Optimized Solution:

void main() {
  assert(Solution().solve([12, 35, 1, 10, 34, 1]) == 34);
  assert(Solution().solve([10, 5, 10]) == 5);
  assert(Solution().solve([10, 10, 10]) == -1);
  assert(Solution().solve([1]) == -1);
  print("All test cases passed!");
}

class Solution {
  int solve(List<int> nums) {
    if (nums.length < 2) return -1;

    int largest = -1;
    int secondLargest = -1;

    for (int num in nums) {
      if (num > largest) {
        secondLargest = largest;
        largest = num;
      } else if (num > secondLargest && num != largest) {
        secondLargest = num;
      }
    }

    return secondLargest;
  }
}
