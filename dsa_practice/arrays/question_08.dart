/// Problem: Second Largest Element
/// Difficulty: Beginner
///
/// Problem Statement:
/// Given an array of integers, find the second largest element.
/// If there is no second largest element (e.g., all elements are same or array size < 2), return -1.
///
/// Input/Output Format:
/// - Input: A list of integers `nums`.
/// - Output: An integer representing the second largest value.
///
/// Constraints:
/// - 1 <= nums.length <= 1000
/// - 0 <= nums[i] <= 1000
///
/// Example Test Cases:
/// Case 1:
/// Input: [12, 35, 1, 10, 34, 1]
/// Output: 34
///
/// Case 2:
/// Input: [10, 5, 10]
/// Output: 5
///
/// Case 3:
/// Input: [10, 10, 10]
/// Output: -1
///
/// Progressive Hints:
/// 1. You can sort the array and pick the second last unique element, but that takes O(N log N).
/// 2. Better approach: Use two variables, `largest` and `secondLargest`.
/// 3. Initialize them to -1 (or a very small number).
/// 4. Iterate through the array:
///    - If `current > largest`: update `secondLargest = largest`, then `largest = current`.
///    - Else if `current > secondLargest` AND `current != largest`: update `secondLargest = current`.
///
/// Time Complexity Goal: O(N)
/// Space Complexity Goal: O(1)

void main() {
  print(solve([12, 35, 1, 10, 34, 1])); // Expected: 34
  print(solve([10, 5, 10])); // Expected: 5
  print(solve([10, 10, 10])); // Expected: -1
}

// TODO: Implement your solution here
int solve(List<int> nums) {
  return -1;
}
