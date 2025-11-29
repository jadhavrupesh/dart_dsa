/// Solution for: Second Largest Element
///
/// Approach Explanation:
/// We maintain two variables: `largest` and `secondLargest`.
/// We iterate through the array once.
/// - If `num > largest`:
///   - The old `largest` becomes the new `secondLargest`.
///   - The `num` becomes the new `largest`.
/// - If `num > secondLargest` AND `num < largest`:
///   - The `num` becomes the new `secondLargest`.
///   - We check `num < largest` to avoid treating a duplicate of the largest as the second largest (unless the problem allows it, but standard definition implies strictly smaller).
///
/// Time Complexity: O(N) - Single pass.
/// Space Complexity: O(1).
///
/// Optimized Solution:

void main() {
  assert(solve([12, 35, 1, 10, 34, 1]) == 34);
  assert(solve([10, 5, 10]) == 5);
  assert(solve([10, 10, 10]) == -1);
  assert(solve([1]) == -1);
  print("All test cases passed!");
}

int solve(List<int> nums) {
  if (nums.length < 2) return -1;

  int largest = -1;
  int secondLargest = -1;

  for (int num in nums) {
    if (num > largest) {
      secondLargest = largest;
      largest = num;
    } else if (num > secondLargest && num != largest) {
      secondLargest = num;
    }
  }

  return secondLargest;
}
