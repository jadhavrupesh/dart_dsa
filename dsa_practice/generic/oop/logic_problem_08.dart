/// Logic Problem 8: Cascade Operator
///
/// Question: What is the output?
///
/// Options:
/// A) Builder
/// B) Builder, 10
/// C) 10
/// D) Error

class Builder {
  int val = 0;
  void setVal(int v) {
    val = v;
  }
  void show() => print(val);
}

void main() {
  Builder()
    ..setVal(10)
    ..show();
}
