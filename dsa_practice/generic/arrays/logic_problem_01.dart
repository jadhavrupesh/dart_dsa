/// Logic Problem 1: Circular Indexing
///
/// Question: What is the output of the following code?
///
/// Options:
/// A) [1, 2, 3, 4, 5]
/// B) [2, 3, 4, 5, 1]
/// C) [2, 3, 4, 5, 5]
/// D) IndexOutOfBoundsException

void main() {
  List<int> arr = [1, 2, 3, 4, 5];
  for (int i = 0; i < arr.length; i++) {
    arr[i] = arr[(i + 1) % arr.length];
  }
  print(arr);
}
