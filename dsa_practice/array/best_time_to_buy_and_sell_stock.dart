/// Problem: Best Time to Buy and Sell Stock
/// Difficulty: Intermediate
///
/// Problem Statement:
/// You are given an array `prices` where `prices[i]` is the price of a given stock on the `i-th` day.
/// You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.
/// Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.
///
/// Input/Output Format:
/// - Input: A list of integers `prices`.
/// - Output: An integer representing the max profit.
///
/// Constraints:
/// - 1 <= prices.length <= 10^5
/// - 0 <= prices[i] <= 10^4
///
/// Example Test Cases:
/// Case 1:
/// Input: [7, 1, 5, 3, 6, 4]
/// Output: 5
/// Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6-1 = 5.
///
/// Case 2:
/// Input: [7, 6, 4, 3, 1]
/// Output: 0
/// Explanation: In this case, no transactions are done and the max profit = 0.
///
/// Progressive Hints:
/// 1. You need to find the smallest price (`minPrice`) seen so far.
/// 2. For each day's price, calculate the potential profit: `currentPrice - minPrice`.
/// 3. Update `maxProfit` if the potential profit is higher.
/// 4. Update `minPrice` if the current price is lower than `minPrice`.
///
/// Time Complexity Goal: O(N)
/// Space Complexity Goal: O(1)

/// Solution for: Best Time to Buy and Sell Stock
///
/// Approach Explanation:
/// We iterate through the prices while keeping track of the minimum price seen so far (`minPrice`).
/// On each day, we calculate the profit if we were to sell today (`price - minPrice`).
/// We update `maxProfit` if this profit is greater than what we've seen before.
/// We also update `minPrice` if the current price is lower than `minPrice`.
///
/// Time Complexity: O(N) - Single pass.
/// Space Complexity: O(1).
///
/// Optimized Solution:

void main() {
  assert(Solution().solve([7, 1, 5, 3, 6, 4]) == 5);
  assert(Solution().solve([7, 6, 4, 3, 1]) == 0);
  assert(Solution().solve([1, 2]) == 1);
  print("All test cases passed!");
}

class Solution {
  int solve(List<int> prices) {
    if (prices.isEmpty) return 0;

    int minPrice = prices[0];
    int maxProfit = 0;

    for (int i = 1; i < prices.length; i++) {
      int currentPrice = prices[i];
      int potentialProfit = currentPrice - minPrice;

      if (potentialProfit > maxProfit) {
        maxProfit = potentialProfit;
      }

      if (currentPrice < minPrice) {
        minPrice = currentPrice;
      }
    }

    return maxProfit;
  }
}
