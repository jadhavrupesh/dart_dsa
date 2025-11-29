/// Solution for: Check if Array is Sorted
///
/// Approach Explanation:
/// We simply iterate through the array and check if every element is less than or equal to the next element.
/// If we find any pair where `nums[i] > nums[i+1]`, we immediately return `false`.
/// If we finish the loop without finding such a pair, the array is sorted, so we return `true`.
///
/// Step-by-Step Logic:
/// 1. Loop `i` from 0 to `nums.length - 2`.
/// 2. Check `if (nums[i] > nums[i+1]) return false`.
/// 3. Return `true` at the end.
///
/// Time Complexity: O(N) - Single pass.
/// Space Complexity: O(1) - No extra space.
///
/// Optimized Solution:

void main() {
  assert(solve([1, 2, 3, 4, 5]) == true);
  assert(solve([1, 2, 5, 3, 4]) == false);
  assert(solve([1, 1, 1]) == true);
  assert(solve([5, 4, 3, 2, 1]) == false);
  assert(solve([10]) == true);
  print("All test cases passed!");
}

bool solve(List<int> nums) {
  for (int i = 0; i < nums.length - 1; i++) {
    if (nums[i] > nums[i + 1]) {
      return false;
    }
  }
  return true;
}
