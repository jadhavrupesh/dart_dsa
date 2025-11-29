# Collections Logic: Patterns & Tips

## 1. Tracing Techniques
- **Collection Diagram**: Draw lists as boxes. Draw Maps as Key -> Value tables.
- **Pipeline Trace**: For functional chains (`list.map.where.toList`), write the intermediate collection after each step.

## 2. Common Patterns
- **Frequency Map**: Count occurrences. `map[item] = (map[item] ?? 0) + 1`.
- **Dedup**: `list.toSet().toList()` removes duplicates.
- **Lookup Table**: Use a Set/Map for O(1) lookups instead of searching a List O(N).
- **Grouping**: `fold` or loop to group items by a key.

## 3. Mental Models
- **"The Bucket"**: A Map/Set puts items into buckets based on hash code.
- **"The Pipeline"**: Functional methods flow data through a series of transformations.

## 4. Do's and Don'ts
- **DO** use `Set` for membership checks.
- **DO** use `isEmpty` instead of `length == 0`.
- **DON'T** use `List.contains` in a loop (O(N^2)). Use a Set instead.
- **DON'T** forget `toList()` if you need to access by index or iterate multiple times.
