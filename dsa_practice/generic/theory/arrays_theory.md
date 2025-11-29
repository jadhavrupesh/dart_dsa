# Arrays Logic: Theory & Concepts

## 1. Memory Layout
- **Contiguous Memory**: Arrays are stored in contiguous memory blocks. This allows O(1) access time via index but makes insertion/deletion O(N) as elements must shift.
- **Fixed vs Dynamic**: In Dart, `List` can be fixed-length or growable. Growable lists resize automatically (usually doubling capacity) when full.

## 2. Reference vs Value
- **Reference Semantics**: Assigning a list to another variable (`b = a`) copies the *reference*, not the data. Modifying `b` affects `a`.
- **Shallow Copy**: `List.from(a)` or `[...a]` creates a new list with the same elements. If elements are objects, they are still shared.

## 3. Indexing Nuances
- **0-Based**: First element is at 0, last at `length - 1`.
- **Circular Indexing**: `arr[i % n]` allows wrapping around the array. Useful for rotating or cyclic problems.
- **Out of Bounds**: Accessing `arr[length]` throws an error. Always check bounds.

## 4. Common Pitfalls
- **Off-by-One**: Looping `i <= length` instead of `i < length`.
- **Concurrent Modification**: modifying a list while iterating over it (e.g., `remove` inside `forEach`) throws an error.
- **In-Place vs Return New**: Know which methods modify the list (`sort`, `shuffle`) and which return a new one (`map`, `where`).
