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
  assert(solve([0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1]) == 6);
  assert(solve([4, 2, 0, 3, 2, 5]) == 9);
  assert(solve([1, 2, 3]) == 0); // No trap
  assert(solve([3, 2, 1]) == 0); // No trap
  print("All test cases passed!");
}

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
