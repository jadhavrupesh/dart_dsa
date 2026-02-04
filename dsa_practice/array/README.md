# Arrays in Dart

## Concept
An **Array** (or `List` in Dart) is a linear data structure that stores elements in contiguous memory locations. It allows for efficient access to elements via indices. In Dart, `List` is a growable array by default, meaning its size can change dynamically.

## Important Definitions
- **Index**: The position of an element in the array, starting from 0.
- **Element**: The value stored at a specific index.
- **Contiguous Memory**: Elements are stored next to each other in memory, allowing O(1) access.
- **Dynamic Array**: An array that automatically resizes itself when it runs out of space (like Dart's `List`).

## Best Practices
- **Prefer `final`**: Use `final` for lists if the reference won't change, even if the content does.
- **Use `const`**: Use `const` for immutable lists known at compile time.
- **Pre-allocate**: If you know the size, use `List.filled(size, value)` or `List.generate(size, generator)` to avoid resizing overhead.
- **Higher-order methods**: Use methods like `.map()`, `.where()`, `.reduce()`, and `.fold()` for cleaner code instead of raw loops.

## Common Mistakes
- **Index Out of Bounds**: Accessing an index `< 0` or `>= length`.
- **Modifying while iterating**: Removing or adding items to a list while iterating over it with a `for-in` loop (throws an error).
- **Inefficient removal**: Removing elements from the beginning or middle of a list is O(N) because subsequent elements must shift.

## Important Variations
- **Fixed-length List**: `new List(n)` (deprecated) -> `List.filled(n, val)`. Cannot add/remove items.
- **Growable List**: Default `[]`. Can add/remove items.
- **Multidimensional Array**: `List<List<int>>` (Matrix).
