/// Logic Problem 1: Inheritance & Constructors
///
/// Question: What is the output?
///
/// Options:
/// A) A B
/// B) B A
/// C) B
/// D) A

class A {
  A() {
    print("A");
  }
}

class B extends A {
  B() {
    print("B");
  }
}

void main() {
  B b = B();
}
