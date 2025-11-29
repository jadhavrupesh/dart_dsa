/// Problem: Trapping Rain Water
/// Difficulty: Advanced
///
/// Problem Statement:
/// Given `n` non-negative integers representing an elevation map where the width of each bar is 1, compute how much water it can trap after raining.
///
/// Input/Output Format:
/// - Input: A list of integers `height`.
/// - Output: An integer representing the total water trapped.
///
/// Constraints:
/// - n == height.length
/// - 1 <= n <= 2 * 10^4
/// - 0 <= height[i] <= 10^5
///
/// Example Test Cases:
/// Case 1:
/// Input: [0,1,0,2,1,0,1,3,2,1,2,1]
/// Output: 6
/// Explanation: The above elevation map (black section) is represented by array [0,1,0,2,1,0,1,3,2,1,2,1]. In this case, 6 units of rain water (blue section) are being trapped.
///
/// Case 2:
/// Input: [4,2,0,3,2,5]
/// Output: 9
///
/// Progressive Hints:
/// 1. For any bar `i`, the water it can trap is `min(max_left, max_right) - height[i]`.
/// 2. Brute force: Find max left and max right for every element. O(N^2).
/// 3. Pre-computation: Store max left and max right in two arrays. O(N) time, O(N) space.
/// 4. Two Pointers: Can we do this in O(1) space?
///    - Maintain `left` and `right` pointers.
///    - Maintain `leftMax` and `rightMax`.
///    - If `height[left] < height[right]`:
///      - If `height[left] >= leftMax`, update `leftMax`.
///      - Else, add `leftMax - height[left]` to result.
///      - Move `left`.
///    - Else:
///      - If `height[right] >= rightMax`, update `rightMax`.
///      - Else, add `rightMax - height[right]` to result.
///      - Move `right`.
///
/// Time Complexity Goal: O(N)
/// Space Complexity Goal: O(1)

void main() {
  print(solve([0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1])); // Expected: 6
  print(solve([4, 2, 0, 3, 2, 5])); // Expected: 9
}

// TODO: Implement your solution here
int solve(List<int> height) {
  return 0;
}
