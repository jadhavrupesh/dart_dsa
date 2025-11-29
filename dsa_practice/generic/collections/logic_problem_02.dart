/// Logic Problem 2: Map Keys
///
/// Question: What is the output?
///
/// Options:
/// A) 1
/// B) 2
/// C) null
/// D) Error

void main() {
  Map<String, int> m = {"a": 1, "b": 2};
  m["a"] = 3;
  print(m["a"]);
}
