/// Solution for: Majority Element
///
/// Approach Explanation:
/// We use the **Boyer-Moore Voting Algorithm**.
/// The intuition is that if we cancel out each occurrence of a non-majority element with a majority element, the majority element will still remain because it appears more than `n/2` times.
///
/// Logic:
/// 1. Initialize `candidate = null` and `count = 0`.
/// 2. Iterate through `nums`:
///    - If `count == 0`, `candidate = num`.
///    - If `num == candidate`, `count++`.
///    - Else, `count--`.
/// 3. The final `candidate` is the majority element.
///
/// Time Complexity: O(N) - Single pass.
/// Space Complexity: O(1).
///
/// Optimized Solution:

void main() {
  assert(solve([3, 2, 3]) == 3);
  assert(solve([2, 2, 1, 1, 1, 2, 2]) == 2);
  assert(solve([1]) == 1);
  print("All test cases passed!");
}

int solve(List<int> nums) {
  int candidate = 0;
  int count = 0;

  for (int num in nums) {
    if (count == 0) {
      candidate = num;
    }

    if (num == candidate) {
      count++;
    } else {
      count--;
    }
  }

  return candidate;
}
