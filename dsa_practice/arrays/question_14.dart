/// Problem: Sort Colors (Dutch National Flag)
/// Difficulty: Intermediate
///
/// Problem Statement:
/// Given an array `nums` with `n` objects colored red, white, or blue, sort them in-place so that objects of the same color are adjacent, with the colors in the order red, white, and blue.
/// We will use the integers 0, 1, and 2 to represent the color red, white, and blue, respectively.
///
/// You must solve this problem without using the library's sort function.
///
/// Input/Output Format:
/// - Input: A list of integers `nums` (containing only 0, 1, 2).
/// - Output: The sorted list.
///
/// Constraints:
/// - n == nums.length
/// - 1 <= n <= 300
/// - nums[i] is either 0, 1, or 2.
///
/// Example Test Cases:
/// Case 1:
/// Input: [2, 0, 2, 1, 1, 0]
/// Output: [0, 0, 1, 1, 2, 2]
///
/// Case 2:
/// Input: [2, 0, 1]
/// Output: [0, 1, 2]
///
/// Progressive Hints:
/// 1. Counting Sort: Count the number of 0s, 1s, and 2s, then overwrite the array. This is 2 passes. Can we do 1 pass?
/// 2. Use 3 pointers: `low`, `mid`, `high`.
/// 3. `low` tracks the boundary of 0s.
/// 4. `high` tracks the boundary of 2s.
/// 5. `mid` iterates through the array.
///    - If `nums[mid] == 0`: swap with `nums[low]`, increment `low` and `mid`.
///    - If `nums[mid] == 1`: just increment `mid`.
///    - If `nums[mid] == 2`: swap with `nums[high]`, decrement `high` (don't increment `mid` yet, check the swapped value).
///
/// Time Complexity Goal: O(N) - One pass.
/// Space Complexity Goal: O(1)

void main() {
  List<int> test1 = [2, 0, 2, 1, 1, 0];
  print("Original: \$test1");
  print("Sorted: \${solve(test1)}"); // Expected: [0, 0, 1, 1, 2, 2]

  List<int> test2 = [2, 0, 1];
  print("Original: \$test2");
  print("Sorted: \${solve(test2)}"); // Expected: [0, 1, 2]
}

// TODO: Implement your solution here
List<int> solve(List<int> nums) {
  return nums;
}
