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
  assert(solve([2, 4, 1, 3, 5]) == 3);
  assert(solve([5, 4, 3, 2, 1]) == 10);
  assert(solve([1, 2, 3]) == 0);
  print("All test cases passed!");
}

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
