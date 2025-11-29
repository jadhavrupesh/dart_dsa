# Logic Problem Solutions (OOP)

## Problem 1: Inheritance & Constructors
**Answer: A) A B**
- **Explanation**: When a child class constructor is called, it implicitly calls the parent class constructor *first* (unless specified otherwise).
    - `A()` executes -> Prints "A".
    - `B()` executes -> Prints "B".

## Problem 2: Method Overriding
**Answer: C) Child Child**
- **Explanation**:
    - `Parent p = Child();` -> The runtime type is `Child`. So `p.say()` calls `Child`'s method.
    - `Child c = Child();` -> Calls `Child`'s method.
    - Dart uses dynamic dispatch (runtime polymorphism).

## Problem 3: Static Variables
**Answer: B) 1 2**
- **Explanation**:
    - `static` variables are shared across all instances.
    - `c1` created -> `count` becomes 1. Print 1.
    - `c2` created -> `count` becomes 2. Print 2.

## Problem 4: Mixins
**Answer: B) M**
- **Explanation**: Mixins override the base class methods if they have the same name.
    - `B` extends `A` with `M`.
    - `M`'s `say()` shadows `A`'s `say()`.
    - So it prints "M".
    - Hierarchy: `B -> M -> A -> Object`.

## Problem 5: Abstract Classes
**Answer: B) No**
- **Explanation**: Abstract classes cannot be instantiated directly using `new` or `()`. They are meant to be extended.

## Problem 6: Factory Constructor
**Answer: A) true**
- **Explanation**:
    - The `Singleton` class uses a `factory` constructor to return the *same* static instance `_instance` every time.
    - `a1` and `a2` refer to the exact same object in memory.

## Problem 7: Named Constructors
**Answer: A) 0, 0**
- **Explanation**: The named constructor `Point.origin()` initializes `x` and `y` to 0.

## Problem 8: Cascade Operator
**Answer: C) 10**
- **Explanation**:
    - `..` (cascade) allows chaining method calls on the same object.
    - `Builder()` creates object.
    - `..setVal(10)` sets val to 10.
    - `..show()` prints val (10).
    - It returns the object itself, but we ignore the return here.

## Problem 9: Encapsulation Solution
```dart
class BankAccount {
  double _balance = 0;

  double get balance => _balance;

  void deposit(double amount) {
    _balance += amount;
  }

  void withdraw(double amount) {
    if (_balance >= amount) {
      _balance -= amount;
    } else {
      print("Insufficient");
    }
  }
}
```

## Problem 10: Interface Solution
```dart
class Dog implements Animal {
  @override
  void makeSound() => print("Bark");
}

class Cat implements Animal {
  @override
  void makeSound() => print("Meow");
}
```
