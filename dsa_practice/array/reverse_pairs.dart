/// Problem: Reverse Pairs
/// Difficulty: Advanced
///
/// Problem Statement:
/// Given an integer array `nums`, return the number of reverse pairs in the array.
/// A reverse pair is a pair `(i, j)` where:
/// - `0 <= i < j < nums.length`
/// - `nums[i] > 2 * nums[j]`
///
/// Input/Output Format:
/// - Input: A list of integers `nums`.
/// - Output: An integer representing the count.
///
/// Constraints:
/// - 1 <= nums.length <= 5 * 10^4
/// - -2^31 <= nums[i] <= 2^31 - 1
///
/// Example Test Cases:
/// Case 1:
/// Input: [1, 3, 2, 3, 1]
/// Output: 2
/// Explanation: The pairs are (1, 4) -> 3 > 2*1 and (3, 4) -> 3 > 2*1.
///
/// Case 2:
/// Input: [2, 4, 3, 5, 1]
/// Output: 3
/// Explanation: (1, 4) -> 4 > 2*1, (2, 4) -> 3 > 2*1, (3, 4) -> 5 > 2*1.
///
/// Progressive Hints:
/// 1. Brute force is O(N^2). Too slow.
/// 2. This is similar to counting inversions (Merge Sort).
/// 3. In Merge Sort, before merging two sorted halves `left` and `right`:
///    - Iterate through `left` with `i` and `right` with `j`.
///    - If `nums[i] > 2 * nums[j]`, then all elements after `i` in the left half will also satisfy the condition (since left is sorted).
///    - Count these pairs.
/// 4. Then perform the standard merge step.
///
/// Time Complexity Goal: O(N log N)
/// Space Complexity Goal: O(N)

/// Solution for: Reverse Pairs
///
/// Approach Explanation:
/// We use **Merge Sort** to count the pairs efficiently.
/// During the merge step of two sorted subarrays `left` and `right`:
/// 1. We maintain a pointer `j` for the `right` subarray.
/// 2. For each element `nums[i]` in `left`, we increment `j` while `nums[i] > 2 * nums[j]`.
/// 3. The count of valid pairs for `nums[i]` is `j` (since all elements from `right[0]` to `right[j-1]` satisfy the condition).
/// 4. After counting, we perform the standard merge to keep the array sorted for the next level of recursion.
///
/// Time Complexity: O(N log N) - Standard Merge Sort complexity.
/// Space Complexity: O(N) - Temporary array for merging.
///
/// Optimized Solution:

void main() {
  assert(Solution().solve([1, 3, 2, 3, 1]) == 2);
  assert(Solution().solve([2, 4, 3, 5, 1]) == 3);
  assert(Solution().solve([5, 4, 3, 2, 1]) == 4);
  print("All test cases passed!");
}

class Solution {
  int solve(List<int> nums) {
    return mergeSort(nums, 0, nums.length - 1);
  }

  int mergeSort(List<int> nums, int low, int high) {
    if (low >= high) return 0;

    int mid = (low + high) ~/ 2;
    int count = mergeSort(nums, low, mid) + mergeSort(nums, mid + 1, high);

    count += countPairs(nums, low, mid, high);
    merge(nums, low, mid, high);

    return count;
  }

  int countPairs(List<int> nums, int low, int mid, int high) {
    int count = 0;
    int right = mid + 1;

    for (int left = low; left <= mid; left++) {
      while (right <= high && nums[left] > 2 * nums[right]) {
        right++;
      }
      count += (right - (mid + 1));
    }
    return count;
  }

  void merge(List<int> nums, int low, int mid, int high) {
    List<int> temp = [];
    int left = low;
    int right = mid + 1;

    while (left <= mid && right <= high) {
      if (nums[left] <= nums[right]) {
        temp.add(nums[left++]);
      } else {
        temp.add(nums[right++]);
      }
    }

    while (left <= mid) temp.add(nums[left++]);
    while (right <= high) temp.add(nums[right++]);

    for (int i = 0; i < temp.length; i++) {
      nums[low + i] = temp[i];
    }
  }
}
