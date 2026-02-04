/// Problem: Subarray Sum Equals K
/// Difficulty: Intermediate
///
/// Problem Statement:
/// Given an array of integers `nums` and an integer `k`, return the total number of subarrays whose sum equals to `k`.
/// A subarray is a contiguous non-empty sequence of elements within an array.
///
/// Input/Output Format:
/// - Input: A list of integers `nums` and an integer `k`.
/// - Output: An integer representing the count.
///
/// Constraints:
/// - 1 <= nums.length <= 2 * 10^4
/// - -1000 <= nums[i] <= 1000
/// - -10^7 <= k <= 10^7
///
/// Example Test Cases:
/// Case 1:
/// Input: nums = [1, 1, 1], k = 2
/// Output: 2
/// Explanation: [1, 1] (indices 0,1) and [1, 1] (indices 1,2).
///
/// Case 2:
/// Input: nums = [1, 2, 3], k = 3
/// Output: 2
/// Explanation: [1, 2] and [3].
///
/// Progressive Hints:
/// 1. Brute force: Calculate sum of all subarrays. O(N^2).
/// 2. Prefix Sum: `sum[i, j] = prefixSum[j] - prefixSum[i-1]`.
/// 3. We want `prefixSum[j] - prefixSum[i-1] == k`.
/// 4. Rearranging: `prefixSum[i-1] = prefixSum[j] - k`.
/// 5. As we iterate `j`, we need to know how many times `prefixSum[j] - k` has occurred before.
/// 6. Use a HashMap to store the frequency of each prefix sum.
///
/// Time Complexity Goal: O(N)
/// Space Complexity Goal: O(N)

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
  assert(Solution().solve([1, 1, 1], 2) == 2);
  assert(Solution().solve([1, 2, 3], 3) == 2);
  assert(Solution().solve([1, -1, 0], 0) == 3); // [1, -1], [0], [1, -1, 0]
  print("All test cases passed!");
}

class Solution {
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
}
