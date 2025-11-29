/// Logic Problem 3: List Reference
///
/// Question: What is the output?
///
/// Options:
/// A) [1, 2]
/// B) [1, 2, 3]
/// C) [1, 2, 3, 3]
/// D) Error

void main() {
  List<int> a = [1, 2];
  List<int> b = a;
  b.add(3);
  print(a);
}
