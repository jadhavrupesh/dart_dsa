/// Logic Problem 6: Factory Constructor
///
/// Question: What does `a1 == a2` print?
///
/// Options:
/// A) true
/// B) false
/// C) Error
/// D) null

class Singleton {
  static final Singleton _instance = Singleton._internal();
  
  factory Singleton() {
    return _instance;
  }
  
  Singleton._internal();
}

void main() {
  Singleton a1 = Singleton();
  Singleton a2 = Singleton();
  print(a1 == a2);
}
