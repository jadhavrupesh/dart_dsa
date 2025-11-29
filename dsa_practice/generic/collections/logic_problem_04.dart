/// Logic Problem 4: Where Filter
///
/// Question: What is the output?
///
/// Options:
/// A) [2, 4]
/// B) (2, 4)
/// C) [1, 3, 5]
/// D) Error

void main() {
  List<int> nums = [1, 2, 3, 4, 5];
  var even = nums.where((n) => n % 2 == 0);
  print(even.toList());
}
