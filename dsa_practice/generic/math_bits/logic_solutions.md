# Logic Problem Solutions (Math & Bits)

## Problem 1: Modulo Arithmetic
**Answer: A) 1, 1**
- **Explanation**: In Dart (and many languages), the `%` operator follows the sign of the dividend (left operand)?
    - Wait, let's verify Dart behavior.
    - `5 % 2` = 1.
    - `-5 % 2` = ?
    - In Dart, `%` returns the Euclidean modulo? No, it returns the remainder.
    - `remainder` method vs `%` operator.
    - `-5 % 2` in Dart results in `1` because Dart's `%` operator returns a non-negative result if the divisor is positive?
    - **Correction**: Dart's `%` operator returns a positive result for positive divisors.
    - `-5 % 2` -> `1`.
    - `-5.remainder(2)` -> `-1`.
    - So the answer is `1, 1`.

## Problem 2: Integer Division
**Answer: B) 2**
- **Explanation**: The `~/` operator is the truncating integer division operator in Dart. `5 / 2` is `2.5`, but `5 ~/ 2` is `2`.

## Problem 3: XOR Logic
**Answer: C) 0**
- **Explanation**: Any number XORed with itself is 0. `5 ^ 5 = 0`.

## Problem 4: Bit Shifting
**Answer: A) 10, 2**
- **Explanation**:
    - `5 << 1`: Shift left by 1 (multiply by 2). `5 * 2 = 10`.
    - `5 >> 1`: Shift right by 1 (integer divide by 2). `5 ~/ 2 = 2`.

## Problem 5: Power of Two
**Answer: C) If n is a power of 2**
- **Explanation**:
    - Powers of 2 have exactly one bit set (e.g., 4 is 100, 8 is 1000).
    - `n - 1` flips all bits up to that set bit (e.g., 3 is 011, 7 is 0111).
    - `n & (n - 1)` becomes 0 only if `n` is a power of 2.

## Problem 6: Floating Point Precision
**Answer: B) false**
- **Explanation**: Floating point numbers cannot represent `0.1` and `0.2` exactly.
    - `0.1 + 0.2` is slightly larger than `0.3` (e.g., `0.30000000000000004`).
    - So `== 0.3` returns `false`.

## Problem 7: Operator Precedence
**Answer: A) 7**
- **Explanation**: Multiplication (`*`) has higher precedence than addition (`+`).
    - `2 * 3 = 6`.
    - `1 + 6 = 7`.

## Problem 8: Post-Increment
**Answer: A) 5, 6**
- **Explanation**:
    - `a++` returns the *current* value (5) and *then* increments `a`.
    - So it prints 5 first.
    - Then `a` becomes 6.
    - The second print shows 6.

## Problem 9: GCD Solution
```dart
int gcd(int a, int b) {
  if (b == 0) return a;
  return gcd(b, a % b);
}
```

## Problem 10: Prime Check Solution
```dart
bool isPrime(int n) {
  if (n <= 1) return false;
  for (int i = 2; i * i <= n; i++) {
    if (n % i == 0) return false;
  }
  return true;
}
```
