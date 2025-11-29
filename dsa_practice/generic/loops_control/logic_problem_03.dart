/// Logic Problem 3: Nested Loop Count
///
/// Question: How many times does the inner loop run in total?
///
/// Options:
/// A) 9
/// B) 6
/// C) 12
/// D) 3

void main() {
  int count = 0;
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j <= i; j++) {
      count++;
    }
  }
  print(count);
}
