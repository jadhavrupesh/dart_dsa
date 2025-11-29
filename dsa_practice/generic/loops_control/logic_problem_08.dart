/// Logic Problem 8: Ternary Operator
///
/// Question: What is the value of `result`?
///
/// Options:
/// A) "Positive"
/// B) "Zero"
/// C) "Negative"
/// D) Error

void main() {
  int x = 0;
  String result = x > 0 ? "Positive" : (x < 0 ? "Negative" : "Zero");
  print(result);
}
