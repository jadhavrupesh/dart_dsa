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

void main() {
  List<int> nums1 = [1, 2, 3, 0, 0, 0];
  solve(nums1, 3, [2, 5, 6], 3);
  print("Result: \$nums1"); // Expected: [1, 2, 2, 3, 5, 6]
}

// TODO: Implement your solution here
void solve(List<int> nums1, int m, List<int> nums2, int n) {
  // Modify nums1 in-place
}
