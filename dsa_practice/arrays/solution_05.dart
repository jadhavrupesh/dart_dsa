/// Solution for: Remove Duplicates from Sorted Array
///
/// Approach Explanation:
/// We use the **Two Pointer** technique.
/// - `i` tracks the position of the last unique element.
/// - `j` iterates through the array to find new unique elements.
///
/// Logic:
/// 1. Start `i` at 0.
/// 2. Loop `j` from 1 to `nums.length - 1`.
/// 3. If `nums[j]` is different from `nums[i]`:
///    - We found a new unique element.
///    - Increment `i`.
///    - Copy `nums[j]` to `nums[i]`.
/// 4. If `nums[j]` is the same as `nums[i]`, just ignore it (it's a duplicate).
/// 5. The number of unique elements is `i + 1`.
///
/// Time Complexity: O(N) - Single pass.
/// Space Complexity: O(1) - In-place modification.
///
/// Optimized Solution:

void main() {
  List<int> t1 = [1, 1, 2];
  assert(solve(t1) == 2);
  assert(t1.sublist(0, 2).toString() == "[1, 2]");

  List<int> t2 = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4];
  assert(solve(t2) == 5);
  assert(t2.sublist(0, 5).toString() == "[0, 1, 2, 3, 4]");

  print("All test cases passed!");
}

int solve(List<int> nums) {
  if (nums.isEmpty) return 0;

  int i = 0;
  for (int j = 1; j < nums.length; j++) {
    if (nums[j] != nums[i]) {
      i++;
      nums[i] = nums[j];
    }
  }

  return i + 1;
}
