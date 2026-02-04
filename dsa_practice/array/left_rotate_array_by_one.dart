/// Problem: Left Rotate Array by One
/// Difficulty: Beginner
///
/// Problem Statement:
/// Given an integer array `nums`, rotate the array to the left by one position.
/// The first element should move to the last position, and all other elements should shift left.
///
/// Input/Output Format:
/// - Input: A list of integers `nums`.
/// - Output: The modified list (rotated).
///
/// Constraints:
/// - 1 <= nums.length <= 1000
/// - -1000 <= nums[i] <= 1000
///
/// Example Test Cases:
/// Case 1:
/// Input: [1, 2, 3, 4, 5]
/// Output: [2, 3, 4, 5, 1]
///
/// Case 2:
/// Input: [10]
/// Output: [10]
///
/// Progressive Hints:
/// 1. Store the first element in a temporary variable.
/// 2. Shift all other elements one position to the left (e.g., `nums[i] = nums[i+1]`).
/// 3. Place the temporary variable at the last index.
///
/// Time Complexity Goal: O(N)
/// Space Complexity Goal: O(1)

/// Solution for: Left Rotate Array by One
///
/// Approach Explanation:
/// To rotate left by one:
/// 1. Save the first element (`nums[0]`) in a temporary variable.
/// 2. Iterate from index 0 to `nums.length - 2`.
/// 3. Set `nums[i] = nums[i+1]`. This shifts everything left.
/// 4. Finally, put the saved element at the last index (`nums[nums.length - 1]`).
///
/// Time Complexity: O(N) - We iterate through the array once.
/// Space Complexity: O(1) - In-place modification.
///
/// Optimized Solution:

void main() {
  assert(Solution().solve([1, 2, 3, 4, 5]).toString() == "[2, 3, 4, 5, 1]");
  assert(Solution().solve([10]).toString() == "[10]");
  assert(Solution().solve([1, 2]).toString() == "[2, 1]");
  print("All test cases passed!");
}

class Solution {
  List<int> solve(List<int> nums) {
    if (nums.isEmpty || nums.length == 1) return nums;

    int first = nums[0];

    for (int i = 0; i < nums.length - 1; i++) {
      nums[i] = nums[i + 1];
    }

    nums[nums.length - 1] = first;
    return nums;
  }
}
