/// Logic Problem 1: String Immutability
///
/// Question: What is the output?
///
/// Options:
/// A) Hello World
/// B) Hello
/// C) World
/// D) Error

void main() {
  String s = "Hello";
  s.replaceAll("l", "x");
  s + " World";
  print(s);
}
