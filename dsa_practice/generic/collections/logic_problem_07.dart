/// Logic Problem 7: Expand Method
///
/// Question: What is the length of the resulting list?
///
/// Options:
/// A) 2
/// B) 3
/// C) 4
/// D) 6

void main() {
  List<List<int>> matrix = [[1, 2], [3, 4]];
  var flat = matrix.expand((i) => i).toList();
  print(flat.length);
}
