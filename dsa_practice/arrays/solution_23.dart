/// Solution for: Merge Sorted Arrays
///
/// Approach Explanation:
/// We use the **Three Pointer** technique, starting from the end of the arrays.
/// Since `nums1` has extra space at the end, we can fill it from right to left without overwriting the initial elements of `nums1` that we still need to compare.
///
/// Logic:
/// 1. `p1 = m - 1` (End of valid nums1)
/// 2. `p2 = n - 1` (End of nums2)
/// 3. `p = m + n - 1` (End of total nums1)
/// 4. While `p2 >= 0`:
///    - If `p1 >= 0` and `nums1[p1] > nums2[p2]`:
///      - `nums1[p] = nums1[p1]`, decrement `p1`.
///    - Else:
///      - `nums1[p] = nums2[p2]`, decrement `p2`.
///    - Decrement `p`.
///
/// Note: We only need to check `p2 >= 0`. If `p1` runs out first, we just copy the rest of `nums2`. If `p2` runs out first, the rest of `nums1` is already in place.
///
/// Time Complexity: O(m + n) - Single pass.
/// Space Complexity: O(1) - In-place.
///
/// Optimized Solution:

void main() {
  List<int> n1 = [1, 2, 3, 0, 0, 0];
  solve(n1, 3, [2, 5, 6], 3);
  assert(n1.toString() == "[1, 2, 2, 3, 5, 6]");

  List<int> n2 = [1];
  solve(n2, 1, [], 0);
  assert(n2.toString() == "[1]");

  List<int> n3 = [0];
  solve(n3, 0, [1], 1);
  assert(n3.toString() == "[1]");

  print("All test cases passed!");
}

void solve(List<int> nums1, int m, List<int> nums2, int n) {
  int p1 = m - 1;
  int p2 = n - 1;
  int p = m + n - 1;

  while (p2 >= 0) {
    if (p1 >= 0 && nums1[p1] > nums2[p2]) {
      nums1[p] = nums1[p1];
      p1--;
    } else {
      nums1[p] = nums2[p2];
      p2--;
    }
    p--;
  }
}
