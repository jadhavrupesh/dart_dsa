/// Logic Problem 8: Set Intersection
///
/// Question: What is the output?
///
/// Options:
/// A) {2}
/// B) {1, 2, 3}
/// C) {2, 3}
/// D) {}

void main() {
  Set<int> a = {1, 2, 3};
  Set<int> b = {2, 3, 4};
  print(a.intersection(b));
}
