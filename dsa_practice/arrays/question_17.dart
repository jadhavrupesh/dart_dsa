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

void main() {
  print(solve([7, 1, 5, 3, 6, 4])); // Expected: 5
  print(solve([7, 6, 4, 3, 1])); // Expected: 0
}

// TODO: Implement your solution here
int solve(List<int> prices) {
  return 0;
}
