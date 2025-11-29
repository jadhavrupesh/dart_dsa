/// Logic Problem 5: Power of Two
///
/// Question: What does this function check?
///
/// Options:
/// A) If n is odd
/// B) If n is even
/// C) If n is a power of 2
/// D) If n is prime

bool check(int n) {
  return n > 0 && (n & (n - 1)) == 0;
}
