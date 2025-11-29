/// Solution for: Rotate Array by K
///
/// Approach Explanation:
/// We use the **Reversal Algorithm** to achieve O(N) time and O(1) space.
/// 1. Normalize `k`: `k = k % n`.
/// 2. Reverse the **entire** array.
/// 3. Reverse the **first k** elements (0 to k-1).
/// 4. Reverse the **remaining** elements (k to n-1).
///
/// Example: [1, 2, 3, 4, 5, 6, 7], k=3
/// - Reverse All: [7, 6, 5, 4, 3, 2, 1]
/// - Reverse First 3: [5, 6, 7, 4, 3, 2, 1]
/// - Reverse Rest: [5, 6, 7, 1, 2, 3, 4] -> Done!
///
/// Time Complexity: O(N) - Three reversals, each takes proportional to N.
/// Space Complexity: O(1) - In-place.
///
/// Optimized Solution:

void main() {
  assert(solve([1, 2, 3, 4, 5, 6, 7], 3).toString() == "[5, 6, 7, 1, 2, 3, 4]");
  assert(solve([-1, -100, 3, 99], 2).toString() == "[3, 99, -1, -100]");
  assert(solve([1], 10).toString() == "[1]");
  print("All test cases passed!");
}

List<int> solve(List<int> nums, int k) {
  int n = nums.length;
  if (n == 0) return nums;
  k = k % n;
  if (k == 0) return nums;

  // Helper function to reverse a portion of the array
  void reverse(int start, int end) {
    while (start < end) {
      int temp = nums[start];
      nums[start] = nums[end];
      nums[end] = temp;
      start++;
      end--;
    }
  }

  // 1. Reverse all
  reverse(0, n - 1);
  // 2. Reverse first k
  reverse(0, k - 1);
  // 3. Reverse rest
  reverse(k, n - 1);

  return nums;
}
