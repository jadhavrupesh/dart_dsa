# Recursion Logic: Theory & Concepts

## 1. The Stack
- **Call Stack**: Every function call pushes a new "frame" onto the stack containing local variables and return address.
- **LIFO**: Last In, First Out. The most recently called function must finish before the caller can resume.
- **Stack Overflow**: Too many recursive calls (infinite recursion) exhaust stack memory.

## 2. Anatomy of Recursion
- **Base Case**: The condition to stop recursion. Returns a value without making a new call.
- **Recursive Step**: The function calls itself with a *smaller* or *simpler* input, moving towards the base case.

## 3. Types of Recursion
- **Head Recursion**: Recursive call is at the start. Processing happens *after* return (bottom-up).
- **Tail Recursion**: Recursive call is the *last* action. Can be optimized by compilers (Tail Call Optimization - TCO). Dart supports TCO in some cases.
- **Tree Recursion**: Multiple recursive calls (e.g., Fibonacci). Exponential complexity O(2^N).

## 4. Common Pitfalls
- **Missing Base Case**: Leads to infinite recursion.
- **Incorrect Step**: Not moving towards base case (e.g., `fun(n)` instead of `fun(n-1)`).
- **Global State**: Relying on global variables can be tricky; prefer passing state as arguments.
