/// Logic Problem 3: Return Value Trace
///
/// Question: What is the result?
///
/// Options:
/// A) 6
/// B) 5
/// C) 4
/// D) 0

void main() {
  print(fun(3));
}

int fun(int n) {
  if (n == 1) return 1;
  return n + fun(n - 1);
}
