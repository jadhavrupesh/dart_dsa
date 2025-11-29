/// Logic Problem 6: Reduce Logic
///
/// Question: What is the output?
///
/// Options:
/// A) 10
/// B) 6
/// C) 15
/// D) 0

void main() {
  List<int> nums = [1, 2, 3, 4];
  int sum = nums.reduce((a, b) => a + b);
  print(sum);
}
