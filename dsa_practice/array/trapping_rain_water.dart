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

/// Solution for: Trapping Rain Water
///
/// Approach Explanation:
/// We use the **Two Pointer** technique to achieve O(N) time and O(1) space.
/// The core idea is that the amount of water trapped at any index `i` is determined by the minimum of the maximum height to its left and the maximum height to its right.
///
/// Logic:
/// 1. Initialize `left = 0`, `right = n - 1`.
/// 2. Initialize `leftMax = 0`, `rightMax = 0`.
/// 3. While `left <= right`:
///    - If `height[left] <= height[right]`:
///      - If `height[left] >= leftMax`, update `leftMax`.
///      - Else, water trapped += `leftMax - height[left]`.
///      - Increment `left`.
///    - Else:
///      - If `height[right] >= rightMax`, update `rightMax`.
///      - Else, water trapped += `rightMax - height[right]`.
///      - Decrement `right`.
///
/// Why this works: If `height[left] < height[right]`, we know that the water level at `left` is limited by `leftMax` (and potentially `height[right]`, but since `height[right]` is larger, `leftMax` is the bottleneck).
///
/// Time Complexity: O(N) - Single pass.
/// Space Complexity: O(1).
///
/// Optimized Solution:

void main() {
  assert(Solution().solve([0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1]) == 6);
  assert(Solution().solve([4, 2, 0, 3, 2, 5]) == 9);
  assert(Solution().solve([1, 2, 3]) == 0); // No trap
  assert(Solution().solve([3, 2, 1]) == 0); // No trap
  print("All test cases passed!");
}

class Solution {
  int solve(List<int> height) {
    int left = 0;
    int right = height.length - 1;
    int leftMax = 0;
    int rightMax = 0;
    int water = 0;

    while (left <= right) {
      if (height[left] <= height[right]) {
        if (height[left] >= leftMax) {
          leftMax = height[left];
        } else {
          water += leftMax - height[left];
        }
        left++;
      } else {
        if (height[right] >= rightMax) {
          rightMax = height[right];
        } else {
          water += rightMax - height[right];
        }
        right--;
      }
    }

    return water;
  }
}
