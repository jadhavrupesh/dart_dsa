/// Logic Problem 5: Map Method
///
/// Question: What is the output?
///
/// Options:
/// A) [2, 4, 6]
/// B) [1, 2, 3]
/// C) [1, 4, 9]
/// D) Error

void main() {
  List<int> nums = [1, 2, 3];
  var squared = nums.map((n) => n * n);
  print(squared.toList());
}
