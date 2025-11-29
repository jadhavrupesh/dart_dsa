# Strings Logic: Patterns & Tips

## 1. Tracing Techniques
- **Box Diagram**: Draw the string as an array of characters with indices.
- **Immutable Trace**: Since strings don't change, when a variable is reassigned, cross out the old arrow and draw a new arrow to the new string value.

## 2. Common Patterns
- **StringBuilder Pattern**: Use `StringBuffer` when building strings in loops.
- **Two Pointers**: Same as arrays (Palindrome check, Reverse string).
- **Frequency Map**: Use `Map<String, int>` or `List<int>` (size 26 for a-z) to count characters (Anagrams).
- **Sliding Window**: Finding substrings (Longest substring without repeating chars).

## 3. Mental Models
- **"String as Array"**: Treat strings as read-only character arrays.
- **"The Zipper"**: Merging two strings involves iterating both indices.

## 4. Do's and Don'ts
- **DO** use interpolation `"\$a"` instead of `+` for simple cases.
- **DO** use `isEmpty` or `isNotEmpty` instead of `length == 0`.
- **DON'T** assume one char = one byte (Unicode).
- **DON'T** use `+` in tight loops.
