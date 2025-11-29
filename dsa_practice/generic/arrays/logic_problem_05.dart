/// Logic Problem 5: Code Identification
///
/// Question: What does this function do?
///
/// Options:
/// A) Sorts the array
/// B) Reverses the array
/// C) Shuffles the array
/// D) Nothing (No change)

void mystery(List<int> nums) {
  for (int i = 0; i < nums.length ~/ 2; i++) {
    int temp = nums[i];
    nums[i] = nums[nums.length - 1 - i];
    nums[nums.length - 1 - i] = temp;
  }
}
