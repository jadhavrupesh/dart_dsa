/// Logic Problem 3: Static Variables
///
/// Question: What is the output?
///
/// Options:
/// A) 1 1
/// B) 1 2
/// C) 2 2
/// D) Error

class Counter {
  static int count = 0;
  Counter() {
    count++;
  }
}

void main() {
  Counter c1 = Counter();
  print(Counter.count);
  Counter c2 = Counter();
  print(Counter.count);
}
