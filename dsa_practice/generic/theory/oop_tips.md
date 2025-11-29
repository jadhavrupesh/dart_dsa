# OOP Logic: Patterns & Tips

## 1. Tracing Techniques
- **Object Diagram**: Draw blobs for objects. Write fields inside.
- **Reference Arrows**: Variables are arrows pointing to blobs. `a = b` makes two arrows point to the same blob.
- **Hierarchy Tree**: Draw the inheritance tree to resolve method calls (look up from Child -> Parent -> Object).

## 2. Common Patterns
- **Singleton**: Ensure only one instance exists. (Private constructor + static final instance + factory).
- **Factory**: Logic to decide which class to instantiate.
- **Builder**: Chaining methods to configure an object (`..setX()..setY()`).
- **Composition**: "Has-a" relationship. Prefer composition over inheritance for flexibility.

## 3. Mental Models
- **"The Blueprint"**: Class is the blueprint; Object is the house built from it.
- **"The Remote Control"**: The variable is the remote; the object is the TV. Copying the variable just buys another remote for the same TV.

## 4. Do's and Don'ts
- **DO** use `final` for fields that shouldn't change.
- **DO** use named parameters `{}` for clarity in constructors.
- **DON'T** use inheritance just to share code (use Mixins or Composition).
- **DON'T** put logic in getters (they should be fast and side-effect free).
