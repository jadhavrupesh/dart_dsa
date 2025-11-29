/// Logic Problem 6: Short Circuit Evaluation
///
/// Question: What is the output?
///
/// Options:
/// A) true, count=1
/// B) true, count=2
/// C) false, count=1
/// D) false, count=2

void main() {
  int count = 0;
  bool check() {
    count++;
    return true;
  }

  bool result = true || check();
  print("\$result, count=\$count");
}
