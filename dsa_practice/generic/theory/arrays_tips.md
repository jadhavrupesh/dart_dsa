# Arrays Logic: Patterns & Tips

## 1. Tracing Techniques
When tracing array code on paper:
- **Draw the Array**: Draw boxes with indices 0 to N-1.
- **Pointer Table**: Create a table with columns for variables (`i`, `j`, `temp`, `arr`).
- **Step-by-Step**: Update the table for *every* line of code. Don't skip steps mentally.

| Step | i | j | arr |
|------|---|---|-----|
| Init | 0 | 5 | [1, 2, 3] |
| 1    | 1 | 4 | [1, 2, 3] |

## 2. Common Patterns
- **Two Pointers**:
    - **Opposite Ends**: `left` at 0, `right` at end. Move towards center. (e.g., Reverse, Palindrome, 2Sum sorted).
    - **Same Direction**: `slow` and `fast`. (e.g., Remove duplicates, Cycle detection).
- **Sliding Window**: Maintain a window `[left, right]` and adjust based on conditions.
- **Prefix Sum**: Pre-calculate cumulative sums to answer range queries in O(1).

## 3. Mental Models
- **"The Swap"**: To swap `a` and `b`, you need a `temp`. Or use tuple destructuring / arithmetic tricks.
- **"The Shift"**: To insert at `i`, shift `i..end` to the right. To delete at `i`, shift `i+1..end` to the left.

## 4. Do's and Don'ts
- **DO** check for empty arrays or nulls first.
- **DO** use `sublist` carefully (it creates a copy).
- **DON'T** modify the array length inside a standard `for` loop unless you adjust the index `i`.
