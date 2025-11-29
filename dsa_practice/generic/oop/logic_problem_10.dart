/// Logic Problem 10: Coding Challenge - Interface
///
/// Task: Create an interface `Animal` with method `makeSound()`.
/// Implement `Dog` and `Cat` classes.

void main() {
  Animal d = Dog();
  Animal c = Cat();
  d.makeSound(); // Expected: Bark
  c.makeSound(); // Expected: Meow
}

abstract class Animal {
  void makeSound();
}

// TODO: Implement Dog and Cat
