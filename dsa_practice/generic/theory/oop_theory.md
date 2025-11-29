# OOP Logic: Theory & Concepts

## 1. The Four Pillars
- **Encapsulation**: Hiding internal state (`_private`). Exposing via getters/setters/methods.
- **Inheritance**: `extends`. Child class acquires properties of Parent. `super` refers to Parent.
- **Polymorphism**: Treating objects as their parent type. Overriding methods (`@override`).
- **Abstraction**: `abstract class` and `interface`. Defining contracts without implementation.

## 2. Dart Specifics
- **Mixins**: `with`. Reuse code in multiple class hierarchies.
- **Constructors**:
    - `ClassName()`: Default.
    - `ClassName.named()`: Named constructor.
    - `factory`: Can return existing instance or subclass.
    - `const`: Creates compile-time constants.
- **Implicit Interfaces**: Every class defines an interface. You can `implement` any class.

## 3. Static vs Instance
- **Static**: Belongs to the class. Shared. Accessed via `ClassName.variable`.
- **Instance**: Belongs to the object. Distinct. Accessed via `object.variable`.

## 4. Common Pitfalls
- **Constructor Order**: Parent constructor runs *before* Child constructor body.
- **Shadowing**: Local variable hides class field. Use `this.variable`.
- **Equality**: Default `==` checks reference. Override `==` and `hashCode` for value equality.
