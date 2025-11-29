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

void main() {
  print(solve([1, 1, 1], 2)); // Expected: 2
  print(solve([1, 2, 3], 3)); // Expected: 2
}

// TODO: Implement your solution here
int solve(List<int> nums, int k) {
  return 0;
}
