/// Logic Problem 7: Modulo Recursion
///
/// Question: What is the output of `fun(123)`?
///
/// Options:
/// A) 123
/// B) 321
/// C) 6
/// D) 1

void fun(int n) {
  if (n == 0) return;
  print(n % 10);
  fun(n ~/ 10);
}
