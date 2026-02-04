/// Problem: Merge Sorted Arrays
/// Difficulty: Advanced
///
/// Problem Statement:
/// You are given two integer arrays `nums1` and `nums2`, sorted in non-decreasing order, and two integers `m` and `n`, representing the number of elements in `nums1` and `nums2` respectively.
/// Merge `nums1` and `nums2` into a single array sorted in non-decreasing order.
///
/// The final sorted array should not be returned by the function, but instead be stored inside the array `nums1`.
/// To accommodate this, `nums1` has a length of `m + n`, where the first `m` elements denote the elements that should be merged, and the last `n` elements are set to 0 and should be ignored. `nums2` has a length of `n`.
///
/// Input/Output Format:
/// - Input: List `nums1`, int `m`, List `nums2`, int `n`.
/// - Output: None (Modify `nums1` in-place).
///
/// Constraints:
/// - nums1.length == m + n
/// - nums2.length == n
/// - 0 <= m, n <= 200
/// - 1 <= m + n <= 200
///
/// Example Test Cases:
/// Case 1:
/// Input: nums1 = [1,2,3,0,0,0], m = 3, nums2 = [2,5,6], n = 3
/// Output: [1,2,2,3,5,6]
///
/// Case 2:
/// Input: nums1 = [1], m = 1, nums2 = [], n = 0
/// Output: [1]
///
/// Progressive Hints:
/// 1. If we start merging from the beginning, we might overwrite elements in `nums1` that we haven't processed yet.
/// 2. Try merging from the end (right to left).
/// 3. Use three pointers:
///    - `p1` pointing to the last valid element in `nums1` (`m-1`).
///    - `p2` pointing to the last element in `nums2` (`n-1`).
///    - `p` pointing to the last position in `nums1` (`m+n-1`).
/// 4. Compare `nums1[p1]` and `nums2[p2]`. Place the larger one at `nums1[p]`.
/// 5. Decrement pointers accordingly.
///
/// Time Complexity Goal: O(m + n)
/// Space Complexity Goal: O(1)

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
  Solution().solve(n1, 3, [2, 5, 6], 3);
  assert(n1.toString() == "[1, 2, 2, 3, 5, 6]");

  List<int> n2 = [1];
  Solution().solve(n2, 1, [], 0);
  assert(n2.toString() == "[1]");

  List<int> n3 = [0];
  Solution().solve(n3, 0, [1], 1);
  assert(n3.toString() == "[1]");

  print("All test cases passed!");
}

class Solution {
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
}
