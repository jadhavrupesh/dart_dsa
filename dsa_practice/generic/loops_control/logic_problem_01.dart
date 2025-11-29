/// Logic Problem 1: Break vs Continue
///
/// Question: What is the final value of `sum`?
///
/// Options:
/// A) 6
/// B) 7
/// C) 10
/// D) 3

void main() {
  int sum = 0;
  for (int i = 1; i <= 5; i++) {
    if (i == 3) continue;
    if (i == 4) break;
    sum += i;
  }
  print(sum);
}
