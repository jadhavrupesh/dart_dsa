/// Logic Problem 6: Prefix Sum Logic
///
/// Question: Given the prefix sum array `P = [2, 5, 9, 14, 20]`, what is the sum of the subarray from index 1 to 3 (inclusive) of the ORIGINAL array?
/// Note: P[i] contains sum of original[0...i].
///
/// Formula: Sum(i, j) = P[j] - P[i-1] (if i > 0)
///
/// Options:
/// A) 14
/// B) 12
/// C) 9
/// D) 18

void main() {
  List<int> P = [2, 5, 9, 14, 20];
  // Calculate sum of original[1...3]
  // Indices: 0  1  2   3   4
  // Values:  2, 5, 9, 14, 20
  
  // Your calculation here
}
