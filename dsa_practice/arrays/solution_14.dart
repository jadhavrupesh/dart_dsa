/// Solution for: Sort Colors
///
/// Approach Explanation:
/// We use the **Dutch National Flag Algorithm** (3-way partitioning).
/// - `low`: Pointer for 0s. Everything before `low` is 0.
/// - `mid`: Pointer for 1s. Everything between `low` and `mid` is 1.
/// - `high`: Pointer for 2s. Everything after `high` is 2.
///
/// Logic:
/// 1. Initialize `low = 0`, `mid = 0`, `high = n - 1`.
/// 2. While `mid <= high`:
///    - If `nums[mid] == 0`: Swap `nums[mid]` and `nums[low]`. Increment `low` and `mid`.
///    - If `nums[mid] == 1`: Just increment `mid`.
///    - If `nums[mid] == 2`: Swap `nums[mid]` and `nums[high]`. Decrement `high`.
///
/// Time Complexity: O(N) - Single pass.
/// Space Complexity: O(1).
///
/// Optimized Solution:

void main() {
  assert(solve([2, 0, 2, 1, 1, 0]).toString() == "[0, 0, 1, 1, 2, 2]");
  assert(solve([2, 0, 1]).toString() == "[0, 1, 2]");
  assert(solve([0]).toString() == "[0]");
  assert(solve([1]).toString() == "[1]");
  print("All test cases passed!");
}

List<int> solve(List<int> nums) {
  int low = 0;
  int mid = 0;
  int high = nums.length - 1;

  while (mid <= high) {
    if (nums[mid] == 0) {
      // Swap with low
      int temp = nums[low];
      nums[low] = nums[mid];
      nums[mid] = temp;
      low++;
      mid++;
    } else if (nums[mid] == 1) {
      mid++;
    } else {
      // Swap with high
      int temp = nums[high];
      nums[high] = nums[mid];
      nums[mid] = temp;
      high--;
    }
  }

  return nums;
}
