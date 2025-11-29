/// Logic Problem 2: Method Overriding
///
/// Question: What is the output?
///
/// Options:
/// A) Parent Child
/// B) Child Parent
/// C) Child Child
/// D) Parent Parent

class Parent {
  void say() => print("Parent");
}

class Child extends Parent {
  @override
  void say() => print("Child");
}

void main() {
  Parent p = Child();
  p.say();
  
  Child c = Child();
  c.say();
}
