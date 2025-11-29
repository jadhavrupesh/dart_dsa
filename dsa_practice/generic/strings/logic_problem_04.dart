/// Logic Problem 4: ASCII Values
///
/// Question: What is the output?
/// Hint: 'A' is 65, 'a' is 97.
///
/// Options:
/// A) 32
/// B) -32
/// C) 0
/// D) 1

void main() {
  String s = "aA";
  print(s.codeUnitAt(0) - s.codeUnitAt(1));
}
