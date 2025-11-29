/// Logic Problem 8: Pointer Logic
///
/// Question: What are the final values of `i` and `j`?
///
/// Options:
/// A) i=3, j=3
/// B) i=3, j=2
/// C) i=2, j=3
/// D) i=2, j=2

void main() {
  int i = 0;
  int j = 5;
  while (i < j) {
    i++;
    j--;
  }
  print("i=\$i, j=\$j");
}
