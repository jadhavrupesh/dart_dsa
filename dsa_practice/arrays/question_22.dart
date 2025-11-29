/// Problem: Merge Intervals
/// Difficulty: Advanced
///
/// Problem Statement:
/// Given an array of `intervals` where `intervals[i] = [start_i, end_i]`, merge all overlapping intervals,
/// and return an array of the non-overlapping intervals that cover all the intervals in the input.
///
/// Input/Output Format:
/// - Input: A list of lists `intervals`.
/// - Output: A list of lists representing merged intervals.
///
/// Constraints:
/// - 1 <= intervals.length <= 10^4
/// - intervals[i].length == 2
/// - 0 <= start_i <= end_i <= 10^4
///
/// Example Test Cases:
/// Case 1:
/// Input: [[1,3],[2,6],[8,10],[15,18]]
/// Output: [[1,6],[8,10],[15,18]]
/// Explanation: Since intervals [1,3] and [2,6] overlap, merge them into [1,6].
///
/// Case 2:
/// Input: [[1,4],[4,5]]
/// Output: [[1,5]]
/// Explanation: Intervals [1,4] and [4,5] are considered overlapping.
///
/// Progressive Hints:
/// 1. Sort the intervals based on their start times.
/// 2. Create a `merged` list and add the first interval to it.
/// 3. Iterate through the remaining intervals.
/// 4. Compare the current interval's start time with the last merged interval's end time.
/// 5. If `current.start <= lastMerged.end`, they overlap. Merge them by updating `lastMerged.end = max(lastMerged.end, current.end)`.
/// 6. Otherwise, they don't overlap. Add the current interval to `merged`.
///
/// Time Complexity Goal: O(N log N) (due to sorting)
/// Space Complexity Goal: O(N) (for result)

void main() {
  List<List<int>> test1 = [
    [1, 3],
    [2, 6],
    [8, 10],
    [15, 18]
  ];
  print("Input: \$test1");
  print("Output: \${solve(test1)}"); // Expected: [[1, 6], [8, 10], [15, 18]]

  List<List<int>> test2 = [
    [1, 4],
    [4, 5]
  ];
  print("Input: \$test2");
  print("Output: \${solve(test2)}"); // Expected: [[1, 5]]
}

// TODO: Implement your solution here
List<List<int>> solve(List<List<int>> intervals) {
  return [];
}
