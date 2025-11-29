# Math & Bit Manipulation: Theory & Concepts

## 1. Bitwise Operators
- **AND (`&`)**: 1 if both bits are 1. Used to extract/mask bits.
- **OR (`|`)**: 1 if at least one bit is 1. Used to set bits.
- **XOR (`^`)**: 1 if bits are different. Used to toggle bits or find unique elements.
- **NOT (`~`)**: Flips all bits.
- **Shifts**: `<<` (Left shift, multiply by 2), `>>` (Right shift, divide by 2).

## 2. Integer Arithmetic
- **Modulo (`%`)**: Remainder. `n % 2` checks parity. `n % 10` gets last digit.
- **Division (`~/`)**: Truncating division in Dart.
- **Overflow**: Dart `int` is 64-bit. Overflow wraps around (two's complement) in native, but behaves differently on web (JS numbers).

## 3. Primes & GCD
- **Prime**: Number > 1 divisible only by 1 and itself. Check up to `sqrt(n)`.
- **GCD**: Largest number dividing both a and b. Euclidean algorithm: `gcd(a, b) = gcd(b, a % b)`.

## 4. Common Pitfalls
- **Precedence**: Bitwise operators often have lower precedence than `==` or `+`. Always use parentheses. `(a & 1) == 0`.
- **Negative Modulo**: `-5 % 2` can be tricky depending on language. Dart returns positive for positive divisor.
