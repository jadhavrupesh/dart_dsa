# Recursion Logic: Patterns & Tips

## 1. Tracing Techniques
- **Recursion Tree**: Draw a tree where each node is a function call. Children are the recursive calls it makes.
- **Stack Diagram**: Draw a stack of boxes. Push a box when called, pop when returned.
- **Indent Method**: Write trace output with indentation increasing for each depth.
  ```
  fun(3)
    fun(2)
      fun(1)
      return 1
    return 2
  return 3
  ```

## 2. Common Patterns
- **Divide and Conquer**: Split problem into halves, solve recursively, combine (Merge Sort).
- **DFS (Depth First Search)**: Explore one branch fully before backtracking (Tree traversals).
- **Backtracking**: Try a path, if it fails, undo and try another (N-Queens, Sudoku).

## 3. Mental Models
- **"The Leap of Faith"**: Assume the recursive call works correctly for the smaller sub-problem. Don't try to trace it all the way down mentally every time. Just focus on the current step and the combination logic.
- **"Russian Dolls"**: Each doll contains a smaller version of itself until the smallest solid doll (base case).

## 4. Do's and Don'ts
- **DO** define the base case first.
- **DO** trust the recursion (Leap of Faith).
- **DON'T** use recursion for simple iteration (loops are usually more memory efficient).
- **DON'T** forget to return the result of the recursive call.
