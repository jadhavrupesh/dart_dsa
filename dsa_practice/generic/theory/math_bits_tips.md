# Math & Bit Manipulation: Patterns & Tips

## 1. Tracing Techniques
- **Binary Table**: Write numbers in binary (e.g., 5 -> 0101). Perform operations column by column.
- **Modulo Cycle**: For modulo problems, write out the sequence to see the cycle (e.g., powers of 2 mod 7).

## 2. Common Patterns
- **Check Odd/Even**: `(n & 1) == 0` is even.
- **Clear Last Bit**: `n & (n - 1)` removes the rightmost '1'. Used to count set bits or check power of 2.
- **Swap**: `a ^= b; b ^= a; a ^= b;` swaps without temp.
- **Extract Digit**: `while (n > 0) { d = n % 10; n ~/= 10; }`.

## 3. Mental Models
- **"The Mask"**: Use a bitmask (like `0001000`) to isolate or change specific bits.
- **"The Clock"**: Modulo arithmetic is like a clock face. `13 % 12` is `1`.

## 4. Do's and Don'ts
- **DO** use `>>` and `<<` for powers of 2 multiplication/division.
- **DO** memorize powers of 2 (1, 2, 4, 8, 16, 32, 64, 128...).
- **DON'T** confuse `&&` (logical) with `&` (bitwise).
