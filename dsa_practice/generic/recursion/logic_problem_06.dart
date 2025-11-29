/// Logic Problem 6: Static/Global Variable
///
/// Question: What is the final value of `count`?
///
/// Options:
/// A) 3
/// B) 6
/// C) 4
/// D) 0

int count = 0;

void fun(int n) {
  if (n == 0) return;
  count++;
  fun(n - 1);
  count++;
}

void main() {
  fun(3);
  print(count);
}
