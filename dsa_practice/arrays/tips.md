# Array Patterns & Tips

## Pattern: Two Pointers

### Identification
How to spot this pattern:
- The problem involves a sorted array (or linked list).
- You need to find a pair, triplet, or subarray that satisfies a condition.
- You need to reverse or swap elements in place.

### Visual Breakdown
Imagine two fingers pointing to different positions in the array.
- **Opposite Ends**: One at start (`left`), one at end (`right`). Move them towards each other.
- **Same Direction**: Both start at 0 (or one ahead). Move them forward at different speeds (Fast & Slow).

### Template (Opposite Ends)
```dart
void twoPointers(List<int> nums) {
  int left = 0;
  int right = nums.length - 1;

  while (left < right) {
    // Check condition
    if (condition(nums[left], nums[right])) {
      // Found it!
      return;
    } else if (shouldMoveLeft(nums[left], nums[right])) {
      left++;
    } else {
      right--;
    }
  }
}
```

### Complexity
- **Time**: O(N) - Each element is visited at most once.
- **Space**: O(1) - No extra space used.

### Example Variations
1. **Two Sum (Sorted)**: Find two numbers that add up to target.
2. **Reverse String/Array**: Swap `left` and `right` and move inward.
3. **Remove Duplicates**: Use one pointer to place unique elements, another to scan.

### Do's and Don'ts
- ✅ Do: Use for "find a pair" problems in sorted arrays.
- ✅ Do: Use for in-place modifications (swapping, removing).
- ❌ Don't: Use if the array is unsorted and sorting is not allowed (or too expensive).

---

## Pattern: Sliding Window

### Identification
How to spot this pattern:
- The problem asks for the "longest", "shortest", or "max/min" subarray/substring.
- You need to calculate something for every contiguous subarray of size `k`.

### Visual Breakdown
Imagine a window frame over a part of the array. You slide the frame one step to the right.
- As it moves, one element leaves the left side, and one element enters the right side.

### Template (Dynamic Size)
```dart
void slidingWindow(List<int> nums) {
  int left = 0;
  // 'right' expands the window
  for (int right = 0; right < nums.length; right++) {
    // Add nums[right] to current window state

    // Shrink window from left if condition is broken
    while (conditionBroken()) {
      // Remove nums[left] from window state
      left++;
    }

    // Update result (max length, min sum, etc.)
  }
}
```

### Complexity
- **Time**: O(N) - Each element is added and removed at most once.
- **Space**: O(1) - Unless you store the window elements in a Set/Map.

### Example Variations
1. **Max Sum Subarray of Size K**: Fixed window size.
2. **Longest Substring Without Repeating Characters**: Dynamic window size.
3. **Smallest Subarray with Sum >= S**: Dynamic window size.

### Do's and Don'ts
- ✅ Do: Use for contiguous subarray problems.
- ❌ Don't: Use for non-contiguous subsequences.
