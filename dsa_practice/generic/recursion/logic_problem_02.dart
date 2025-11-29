/// Logic Problem 2: Print Order
///
/// Question: What is the output?
///
/// Options:
/// A) 3 2 1
/// B) 1 2 3
/// C) 3 2 1 0
/// D) 0 1 2 3

void main() {
  fun(3);
}

void fun(int n) {
  if (n == 0) return;
  fun(n - 1);
  print(n);
}
