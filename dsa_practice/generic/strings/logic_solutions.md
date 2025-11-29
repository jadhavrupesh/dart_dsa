# Logic Problem Solutions (Strings)

## Problem 1: String Immutability
**Answer: B) Hello**
- **Explanation**: Strings in Dart are immutable. Methods like `replaceAll` return a *new* string but do not modify the original `s`. The concatenation `s + " World"` also creates a new string which is discarded. So `s` remains "Hello".

## Problem 2: Substring Indices
**Answer: A) art**
- **Explanation**: `substring(start, end)` includes `start` but excludes `end`.
    - Index 0: D
    - Index 1: a (Start)
    - Index 2: r
    - Index 3: t
    - Index 4: L (End - Exclusive)
    - Result: "art".

## Problem 3: String Comparison
**Answer: A) true, true**
- **Explanation**: In Dart, `==` on String compares the *content* (values), not the memory reference (unlike Java). So "Hello" equals "He" + "llo".

## Problem 4: ASCII Values
**Answer: A) 32**
- **Explanation**:
    - 'a' has ASCII 97.
    - 'A' has ASCII 65.
    - `97 - 65 = 32`.
    - This difference (32) is constant between any lowercase and uppercase letter.

## Problem 5: Split and Join
**Answer: A) a-b-c**
- **Explanation**:
    - `split(",")` creates `["a", "b", "c"]`.
    - `join("-")` joins them with `-` to form "a-b-c".

## Problem 6: String Interpolation
**Answer: A) The sum is 5 + 5**
- **Explanation**: String interpolation `\$a` replaces the variable with its string representation.
    - `\$a` becomes "5".
    - So it prints "The sum is 5 + 5".
    - To perform addition, you would need `\${a + a}`.

## Problem 7: Index Of
**Answer: C) 4**
- **Explanation**: `indexOf("na", 3)` searches for "na" starting from index 3.
    - "banana":
    - 0: b, 1: a, 2: n, 3: a, 4: n, 5: a.
    - Starting at 3 ('a'), the next "na" starts at index 4.

## Problem 8: Trim Logic
**Answer: C) 4**
- **Explanation**: `trim()` removes leading and trailing whitespace.
    - "  Dart  " becomes "Dart".
    - Length of "Dart" is 4.

## Problem 9: Reverse Words Solution
```dart
String reverseWords(String s) {
  // 1. Trim to remove leading/trailing spaces
  // 2. Split by one or more spaces (RegExp) to handle multiple spaces between words
  // 3. Reverse the list
  // 4. Join with a single space
  return s.trim().split(RegExp(r'\s+')).reversed.join(' ');
}
```

## Problem 10: Anagram Check Solution
```dart
bool isAnagram(String s1, String s2) {
  // Helper to clean and sort string
  String clean(String s) {
    List<String> chars = s.toLowerCase().replaceAll(RegExp(r'\s+'), '').split('');
    chars.sort();
    return chars.join('');
  }
  
  return clean(s1) == clean(s2);
}
```
