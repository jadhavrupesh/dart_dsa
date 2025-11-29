/// Logic Problem 3: Loop Logic Trace
///
/// Question: What is the final value of `count`?
///
/// Options:
/// A) 5
/// B) 4
/// C) 3
/// D) 2

void main() {
  List<int> nums = [1, 2, 3, 4, 5, 6];
  int count = 0;
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] % 2 == 0) {
      continue;
    }
    count++;
    if (count > 2) {
      break;
    }
  }
  print(count);
}
