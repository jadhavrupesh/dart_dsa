/// Logic Problem 4: Infinite Recursion
///
/// Question: What happens when `fun(5)` is called?
///
/// Options:
/// A) Prints 5 4 3 2 1
/// B) Prints 5 5 5 ...
/// C) StackOverflowError
/// D) Returns 0

void fun(int n) {
  if (n == 0) return;
  print(n);
  fun(n); // Note: n is not decremented
}
