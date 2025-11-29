# Collections Logic: Theory & Concepts

## 1. Core Collections
- **List**: Ordered, indexed. Allow duplicates. `[1, 2, 3]`.
- **Set**: Unordered, unique elements. Uses `hashCode` and `==`. `{1, 2, 3}`.
- **Map**: Key-Value pairs. Keys must be unique. `{'a': 1}`.

## 2. Iteration
- **Iterable**: The parent of List and Set. Lazy evaluation (e.g., `map`, `where` return Iterables, not Lists).
- **Methods**: `forEach`, `map`, `where`, `reduce`, `fold`, `any`, `every`.

## 3. Hashing
- **HashMap/HashSet**: Use hash table. O(1) average access. Order is not guaranteed (though Dart's default implementation preserves insertion order).
- **Equality**: If `a == b`, then `a.hashCode` MUST equal `b.hashCode`.

## 4. Common Pitfalls
- **Modification**: Adding/removing items while iterating throws `ConcurrentModificationError`.
- **Lazy Evaluation**: `var x = list.map(...)` does nothing until `x` is iterated or `toList()` is called.
- **Key Mutability**: Avoid using mutable objects as Map keys. If the object changes, its hash code might change, making it unfindable.
