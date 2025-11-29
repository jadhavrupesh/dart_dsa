/// Solution for: Next Permutation
///
/// Approach Explanation:
/// We follow the standard algorithm to generate the next lexicographical permutation:
/// 1. **Find the Break Point**: Traverse from right to left to find the first index `i` such that `nums[i] < nums[i+1]`. This indicates that the suffix starting from `i+1` is decreasing.
/// 2. **Find Successor**: If such an `i` is found, traverse from right to left again to find the first index `j` such that `nums[j] > nums[i]`. This `nums[j]` is the next largest element that can replace `nums[i]`.
/// 3. **Swap**: Swap `nums[i]` and `nums[j]`.
/// 4. **Reverse Suffix**: Reverse the subarray from `i+1` to the end. This makes the suffix the smallest possible permutation, ensuring we get the *next* lexicographical order.
/// 5. **Edge Case**: If no break point is found (entire array is decreasing), just reverse the whole array (step 4 with `i = -1`).
///
/// Time Complexity: O(N) - In worst case, we scan the array twice and reverse once.
/// Space Complexity: O(1) - In-place.
///
/// Optimized Solution:

void main() {
  assert(solve([1, 2, 3]).toString() == "[1, 3, 2]");
  assert(solve([3, 2, 1]).toString() == "[1, 2, 3]");
  assert(solve([1, 1, 5]).toString() == "[1, 5, 1]");
  assert(solve([1, 3, 2]).toString() == "[2, 1, 3]");
  print("All test cases passed!");
}

List<int> solve(List<int> nums) {
  int n = nums.length;
  int i = n - 2;

  // 1. Find break point
  while (i >= 0 && nums[i] >= nums[i + 1]) {
    i--;
  }

  if (i >= 0) {
    // 2. Find successor
    int j = n - 1;
    while (nums[j] <= nums[i]) {
      j--;
    }
    // 3. Swap
    int temp = nums[i];
    nums[i] = nums[j];
    nums[j] = temp;
  }

  // 4. Reverse suffix
  int start = i + 1;
  int end = n - 1;
  while (start < end) {
    int temp = nums[start];
    nums[start] = nums[end];
    nums[end] = temp;
    start++;
    end--;
  }

  return nums;
}
