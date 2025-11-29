/// Logic Problem 4: Mixins
///
/// Question: What is the output?
///
/// Options:
/// A) A
/// B) B
/// C) Error
/// D) A B

mixin M {
  void say() => print("M");
}

class A {
  void say() => print("A");
}

class B extends A with M {}

void main() {
  B b = B();
  b.say();
}
