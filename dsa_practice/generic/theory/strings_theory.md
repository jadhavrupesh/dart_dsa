# Strings Logic: Theory & Concepts

## 1. Immutability
- **Definition**: Strings in Dart are immutable. Once created, they cannot be changed.
- **Consequence**: Methods like `replaceAll`, `substring`, `toUpperCase` return a **new** string. The original remains untouched.
- **Efficiency**: Frequent concatenation (`s += "a"`) in a loop is O(N^2). Use `StringBuffer` for O(N).

## 2. String Pool & Equality
- **Literals**: String literals are often interned (pooled) by the compiler/runtime to save memory.
- **Equality**: `==` checks value equality (content), not reference equality. `identical(s1, s2)` checks reference.

## 3. ASCII & Unicode
- **Code Units**: Dart strings are sequences of UTF-16 code units.
- **Runes**: For characters outside the Basic Multilingual Plane (like emojis), use `runes`.
- **Math**: `'a'` is 97, `'A'` is 65. Difference is 32. Digits `'0'` to `'9'` are 48-57.

## 4. Common Pitfalls
- **Index Access**: `s[i]` gives the character (as a String of length 1).
- **Range Errors**: `substring(start, end)` throws if indices are invalid.
- **Splitting**: `split('')` gives characters. `split(' ')` gives words.
