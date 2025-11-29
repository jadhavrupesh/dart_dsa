# Loops & Control Flow: Patterns & Tips

## 1. Tracing Techniques
- **State Table**: Essential for loops. Columns: `iteration`, `i`, `condition`, `variables`.
- **Flowchart**: For complex `if-else` or `switch` logic, draw a quick flowchart to see paths.

## 2. Common Patterns
- **Accumulator**: `sum += x` or `prod *= x`.
- **Flag**: `bool found = false;` ... `if (match) found = true; break;`.
- **Nested Loops**: O(N^2). Inner loop runs completely for *each* iteration of outer loop.
- **Sentinel**: Using a specific value (like -1 or null) to terminate a loop.

## 3. Mental Models
- **"The Fencepost"**: Loop runs N times, but you might need N+1 or N-1 actions (e.g., printing commas between items).
- **"The Guard"**: `if (bad) return;` at the start of a function reduces nesting.

## 4. Do's and Don'ts
- **DO** use `break` to exit early when the job is done.
- **DO** be careful with `double` in loop conditions (precision issues).
- **DON'T** modify the loop counter inside the body unless necessary (makes logic hard to follow).
- **DON'T** create infinite loops (always ensure the condition eventually becomes false).
