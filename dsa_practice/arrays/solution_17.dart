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

import 'dart:math';

void main() {
  assert(solve([7, 1, 5, 3, 6, 4]) == 5);
  assert(solve([7, 6, 4, 3, 1]) == 0);
  assert(solve([1, 2]) == 1);
  print("All test cases passed!");
}

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
