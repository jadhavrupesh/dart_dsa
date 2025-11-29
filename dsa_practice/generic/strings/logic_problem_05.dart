/// Logic Problem 5: Split and Join
///
/// Question: What is the output?
///
/// Options:
/// A) a-b-c
/// B) a,b,c
/// C) abc
/// D) a b c

void main() {
  String s = "a,b,c";
  List<String> parts = s.split(",");
  print(parts.join("-"));
}
