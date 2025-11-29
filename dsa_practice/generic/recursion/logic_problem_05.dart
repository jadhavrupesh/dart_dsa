/// Logic Problem 5: Two Branch Recursion
///
/// Question: How many times is `fun` called for `fun(3)` (including the initial call)?
///
/// Options:
/// A) 3
/// B) 5
/// C) 7
/// D) 9

void main() {
  fun(3);
}

void fun(int n) {
  if (n <= 0) return;
  fun(n - 1);
  fun(n - 1);
}
