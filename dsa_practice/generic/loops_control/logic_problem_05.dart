/// Logic Problem 5: Variable Scope Shadowing
///
/// Question: What is the output?
///
/// Options:
/// A) 10 20
/// B) 20 20
/// C) 20 10
/// D) 10 10

void main() {
  int x = 10;
  if (true) {
    int x = 20;
    print(x);
  }
  print(x);
}
