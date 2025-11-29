/// Solution for: Linear Search
///
/// Approach Explanation:
/// This is the most basic search algorithm. We simply traverse the array element by element.
/// If we find a match, we return the index. If we reach the end, the element is not there.
///
/// Time Complexity: O(N) - Worst case we check every element.
/// Space Complexity: O(1) - No extra space.
///
/// Optimized Solution:

void main() {
  assert(solve([1, 2, 3, 4, 5], 3) == 2);
  assert(solve([10, 20, 30], 25) == -1);
  assert(solve([5], 5) == 0);
  assert(solve([], 1) == -1);
  print("All test cases passed!");
}

int solve(List<int> nums, int target) {
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] == target) {
      return i;
    }
  }
  return -1;
}
