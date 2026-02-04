/// Problem: Count Inversions
/// Difficulty: Advanced
///
/// Problem Statement:
/// Given an array of integers, count the number of inversions.
/// An inversion occurs if `i < j` but `nums[i] > nums[j]`.
///
/// Input/Output Format:
/// - Input: A list of integers `nums`.
/// - Output: An integer representing the count.
///
/// Constraints:
/// - 1 <= nums.length <= 10^5
/// - -10^9 <= nums[i] <= 10^9
///
/// Example Test Cases:
/// Case 1:
/// Input: [2, 4, 1, 3, 5]
/// Output: 3
/// Explanation: (2, 1), (4, 1), (4, 3).
///
/// Case 2:
/// Input: [5, 4, 3, 2, 1]
/// Output: 10
///
/// Progressive Hints:
/// 1. Brute force is O(N^2).
/// 2. Use Merge Sort.
/// 3. During the merge step, if `nums[left] > nums[right]`, it means `nums[left]` and all elements after it in the left subarray are greater than `nums[right]`.
/// 4. So, `count += (mid - left + 1)`.
///
/// Time Complexity Goal: O(N log N)
/// Space Complexity Goal: O(N)

/// Solution for: Count Inversions
///
/// Approach Explanation:
/// We use **Merge Sort**.
/// During the merge step, when we pick an element from the right subarray (`nums[right]`) because it is smaller than `nums[left]`, it implies that `nums[left]` and all subsequent elements in the left subarray are greater than `nums[right]`.
/// This constitutes `(mid - left + 1)` inversions.
///
/// Time Complexity: O(N log N).
/// Space Complexity: O(N).
///
/// Optimized Solution:

void main() {
  assert(Solution().solve([2, 4, 1, 3, 5]) == 3);
  assert(Solution().solve([5, 4, 3, 2, 1]) == 10);
  assert(Solution().solve([1, 2, 3]) == 0);
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
    count += merge(nums, low, mid, high);

    return count;
  }

  int merge(List<int> nums, int low, int mid, int high) {
    List<int> temp = [];
    int left = low;
    int right = mid + 1;
    int count = 0;

    while (left <= mid && right <= high) {
      if (nums[left] <= nums[right]) {
        temp.add(nums[left++]);
      } else {
        // Right is smaller, so everything from left to mid is an inversion
        temp.add(nums[right++]);
        count += (mid - left + 1);
      }
    }

    while (left <= mid) temp.add(nums[left++]);
    while (right <= high) temp.add(nums[right++]);

    for (int i = 0; i < temp.length; i++) {
      nums[low + i] = temp[i];
    }

    return count;
  }
}
