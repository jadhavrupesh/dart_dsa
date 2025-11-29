/// Problem: Container With Most Water
/// Difficulty: Intermediate
///
/// Problem Statement:
/// You are given an integer array `height` of length `n`. There are `n` vertical lines drawn such that the two endpoints of the `i-th` line are `(i, 0)` and `(i, height[i])`.
/// Find two lines that together with the x-axis form a container, such that the container contains the most water.
/// Return the maximum amount of water a container can store.
///
/// Notice that you may not slant the container.
///
/// Input/Output Format:
/// - Input: A list of integers `height`.
/// - Output: An integer representing the max area.
///
/// Constraints:
/// - n == height.length
/// - 2 <= n <= 10^5
/// - 0 <= height[i] <= 10^4
///
/// Example Test Cases:
/// Case 1:
/// Input: [1,8,6,2,5,4,8,3,7]
/// Output: 49
/// Explanation: The max area is between index 1 (height 8) and index 8 (height 7).
/// Width = 8 - 1 = 7. Height = min(8, 7) = 7. Area = 7 * 7 = 49.
///
/// Case 2:
/// Input: [1, 1]
/// Output: 1
///
/// Progressive Hints:
/// 1. The brute force approach checks every pair of lines, taking O(N^2). Can we do better?
/// 2. Use Two Pointers: one at the beginning (`left`) and one at the end (`right`).
/// 3. The area is determined by the shorter line: `min(height[left], height[right]) * (right - left)`.
/// 4. To potentially find a larger area, we need to move the pointer pointing to the shorter line inward.
/// 5. Why? Because moving the taller line inward can only decrease the width without increasing the height (limited by the shorter line).
///
/// Time Complexity Goal: O(N)
/// Space Complexity Goal: O(1)

void main() {
  print(solve([1, 8, 6, 2, 5, 4, 8, 3, 7])); // Expected: 49
  print(solve([1, 1])); // Expected: 1
}

// TODO: Implement your solution here
int solve(List<int> height) {
  return 0;
}
