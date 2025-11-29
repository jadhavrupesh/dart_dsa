/// Logic Problem 8: Nested Recursion
///
/// Question: What is the result of `fun(95)`?
/// Hint: This is the McCarthy 91 function.
///
/// Options:
/// A) 91
/// B) 95
/// C) 100
/// D) 85

int fun(int n) {
  if (n > 100) return n - 10;
  return fun(fun(n + 11));
}
