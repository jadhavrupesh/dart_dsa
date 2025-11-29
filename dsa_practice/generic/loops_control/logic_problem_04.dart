/// Logic Problem 4: Switch Case Logic
///
/// Question: What is the output?
///
/// Options:
/// A) Two
/// B) Two Three
/// C) Two Three Default
/// D) Error

void main() {
  int x = 2;
  switch (x) {
    case 1:
      print("One");
      break;
    case 2:
      print("Two");
      // Missing break, but Dart enforces break/return/throw for non-empty cases.
      // However, if the case body is empty, it falls through.
      // Wait, let's assume this code compiles (Dart 3.0+ requires break).
      // If we use `continue` label, we can fall through.
      continue label3;
    label3:
    case 3:
      print("Three");
      break;
    default:
      print("Default");
  }
}
