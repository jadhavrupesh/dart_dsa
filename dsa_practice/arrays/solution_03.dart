/// Solution for: Find Minimum and Maximum Element
///
/// Approach Explanation:
/// We can find both the minimum and maximum in a single pass through the array.
/// 1. Initialize `minVal` and `maxVal` to the first element of the array.
/// 2. Loop through the array starting from the second element.
/// 3. For each element:
///    - If it is smaller than `minVal`, update `minVal`.
///    - If it is larger than `maxVal`, update `maxVal`.
///
/// Step-by-Step Logic:
/// - Array: [3, 2, 1, 56]
/// - Init: min=3, max=3
/// - Visit 2: 2 < 3 -> min=2.
/// - Visit 1: 1 < 2 -> min=1.
/// - Visit 56: 56 > 3 -> max=56.
/// - Result: [1, 56]
///
/// Time Complexity: O(N) - We visit each element once.
/// Space Complexity: O(1) - Only two variables used.
///
/// Optimized Solution:

void main() {
  assert(solve([3, 2, 1, 56, 1000, 167]).toString() == "[1, 1000]");
  assert(solve([5]).toString() == "[5, 5]");
  assert(solve([-1, -5, 0, 10]).toString() == "[-5, 10]");
  print("All test cases passed!");
}

List<int> solve(List<int> nums) {
  if (nums.isEmpty) return []; // Handle empty case if needed, though constraints say length >= 1

  int minVal = nums[0];
  int maxVal = nums[0];

  for (int i = 1; i < nums.length; i++) {
    if (nums[i] < minVal) {
      minVal = nums[i];
    } else if (nums[i] > maxVal) {
      maxVal = nums[i];
    }
  }

  return [minVal, maxVal];
}
