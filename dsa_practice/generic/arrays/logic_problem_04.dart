/// Logic Problem 4: Nested Loop Trace
///
/// Question: What does this code print?
///
/// Options:
/// A) 6
/// B) 10
/// C) 15
/// D) 21

void main() {
  List<int> nums = [1, 2, 3, 4];
  int sum = 0;
  for (int i = 0; i < nums.length; i++) {
    for (int j = i; j < nums.length; j++) {
      sum += nums[j];
    }
  }
  print(sum);
}
