/// Solution for: Subarray Sum Equals K
///
/// Approach Explanation:
/// We use the **Prefix Sum + HashMap** technique.
/// 1. Maintain a running `currentSum`.
/// 2. Use a map `prefixSumMap` to store how many times a specific prefix sum has occurred.
/// 3. Initialize `prefixSumMap` with `{0: 1}` (to handle subarrays starting from index 0).
/// 4. For each element:
///    - `currentSum += num`
///    - Check if `currentSum - k` exists in the map. If yes, add its frequency to `count`.
///    - Add/Update `currentSum` in the map.
///
/// Logic:
/// If `currentSum - oldSum = k`, then `currentSum - k = oldSum`.
/// So if we have seen `currentSum - k` before, it means there is a subarray ending here with sum `k`.
///
/// Time Complexity: O(N) - Single pass.
/// Space Complexity: O(N) - Map stores up to N distinct prefix sums.
///
/// Optimized Solution:

void main() {
  assert(solve([1, 1, 1], 2) == 2);
  assert(solve([1, 2, 3], 3) == 2);
  assert(solve([1, -1, 0], 0) == 3); // [1, -1], [0], [1, -1, 0]
  print("All test cases passed!");
}

int solve(List<int> nums, int k) {
  Map<int, int> prefixSumMap = {0: 1};
  int currentSum = 0;
  int count = 0;

  for (int num in nums) {
    currentSum += num;

    int diff = currentSum - k;
    if (prefixSumMap.containsKey(diff)) {
      count += prefixSumMap[diff]!;
    }

    prefixSumMap[currentSum] = (prefixSumMap[currentSum] ?? 0) + 1;
  }

  return count;
}
