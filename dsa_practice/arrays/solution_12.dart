/// Solution for: Container With Most Water
///
/// Approach Explanation:
/// We use the **Two Pointer** technique.
/// 1. Start with `left = 0` and `right = n - 1`.
/// 2. Calculate the area formed by these two lines: `min(height[left], height[right]) * (right - left)`.
/// 3. Update the maximum area found so far.
/// 4. Move the pointer that points to the shorter line inward.
///    - If `height[left] < height[right]`, increment `left`.
///    - Else, decrement `right`.
/// 5. Repeat until `left` meets `right`.
///
/// Logic:
/// The intuition is that the area is limited by the shorter line. If we move the pointer at the taller line, the width decreases, and the height can't possibly increase (it's still limited by the shorter line we didn't move). So the area can only decrease. The only chance to get a larger area is to move the shorter line pointer in hopes of finding a taller line.
///
/// Time Complexity: O(N) - Single pass.
/// Space Complexity: O(1).
///
/// Optimized Solution:

import 'dart:math';

void main() {
  assert(solve([1, 8, 6, 2, 5, 4, 8, 3, 7]) == 49);
  assert(solve([1, 1]) == 1);
  assert(solve([4, 3, 2, 1, 4]) == 16);
  assert(solve([1, 2, 1]) == 2);
  print("All test cases passed!");
}

int solve(List<int> height) {
  int left = 0;
  int right = height.length - 1;
  int maxArea = 0;

  while (left < right) {
    int currentHeight = min(height[left], height[right]);
    int currentWidth = right - left;
    int area = currentHeight * currentWidth;

    maxArea = max(maxArea, area);

    if (height[left] < height[right]) {
      left++;
    } else {
      right--;
    }
  }

  return maxArea;
}
