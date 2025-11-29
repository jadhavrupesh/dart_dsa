/// Logic Problem 7: XOR Puzzle
///
/// Question: What is the output?
/// Hint: a ^ a = 0, a ^ 0 = a.
///
/// Options:
/// A) 0
/// B) 1
/// C) 2
/// D) 3

void main() {
  List<int> nums = [1, 2, 3, 2, 1];
  int result = 0;
  for (int n in nums) {
    result ^= n;
  }
  print(result);
}
