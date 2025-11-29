/// Logic Problem 2: Reference vs Value
///
/// Question: What is the output?
///
/// Options:
/// A) [10, 2, 3]
/// B) [1, 2, 3]
/// C) [10, 20, 30]
/// D) Error

void modifyList(List<int> list) {
  list[0] = 10;
  list = [10, 20, 30]; // Reassigning the local reference
}

void main() {
  List<int> nums = [1, 2, 3];
  modifyList(nums);
  print(nums);
}
