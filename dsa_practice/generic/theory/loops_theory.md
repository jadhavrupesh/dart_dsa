# Loops & Control Flow: Theory & Concepts

## 1. Loop Types
- **For Loop**: Standard `for (init; condition; increment)`. Best when iterations are known.
- **While Loop**: `while (condition)`. Best when iterations depend on a state change.
- **Do-While**: Executes body *at least once*.
- **For-In**: `for (var x in list)`. Best for iterating collections without index.

## 2. Control Flow
- **Break**: Exits the *innermost* loop immediately.
- **Continue**: Skips the rest of the current iteration and jumps to the next one.
- **Labels**: `label: for (...)`. `break label;` allows breaking out of nested loops.

## 3. Scope & Shadowing
- **Block Scope**: Variables declared inside `{ ... }` exist only there.
- **Shadowing**: Declaring a variable with the same name inside a nested block hides the outer one. This is a common source of bugs.

## 4. Short-Circuit Evaluation
- **AND (`&&`)**: If left is false, right is ignored.
- **OR (`||`)**: If left is true, right is ignored.
- **Usage**: `if (obj != null && obj.isValid)` prevents null pointer exceptions.
