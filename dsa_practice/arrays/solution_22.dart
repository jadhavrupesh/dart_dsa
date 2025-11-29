/// Solution for: Merge Intervals
///
/// Approach Explanation:
/// 1. **Sort**: First, sort the intervals by their start time. This ensures that if intervals overlap, they will be adjacent in the sorted list.
/// 2. **Iterate**: Initialize a `merged` list with the first interval.
/// 3. **Merge**: For each subsequent interval:
///    - If its start time is less than or equal to the end time of the last interval in `merged`, it means they overlap.
///    - We merge them by updating the end time of the last interval to `max(last.end, current.end)`.
///    - If they don't overlap, simply add the current interval to `merged`.
///
/// Time Complexity: O(N log N) - Sorting takes N log N. Iteration takes N.
/// Space Complexity: O(N) - To store the result.
///
/// Optimized Solution:

import 'dart:math';

void main() {
  // Helper to compare lists of lists
  bool compare(List<List<int>> a, List<List<int>> b) {
    if (a.length != b.length) return false;
    for (int i = 0; i < a.length; i++) {
      if (a[i][0] != b[i][0] || a[i][1] != b[i][1]) return false;
    }
    return true;
  }

  assert(compare(
      solve([
        [1, 3],
        [2, 6],
        [8, 10],
        [15, 18]
      ]),
      [
        [1, 6],
        [8, 10],
        [15, 18]
      ]));
  assert(compare(
      solve([
        [1, 4],
        [4, 5]
      ]),
      [
        [1, 5]
      ]));
  print("All test cases passed!");
}

List<List<int>> solve(List<List<int>> intervals) {
  if (intervals.isEmpty) return [];

  // Sort by start time
  intervals.sort((a, b) => a[0].compareTo(b[0]));

  List<List<int>> merged = [];
  merged.add(intervals[0]);

  for (int i = 1; i < intervals.length; i++) {
    List<int> last = merged.last;
    List<int> current = intervals[i];

    if (current[0] <= last[1]) {
      // Overlap, merge
      last[1] = max(last[1], current[1]);
    } else {
      // No overlap, add
      merged.add(current);
    }
  }

  return merged;
}
