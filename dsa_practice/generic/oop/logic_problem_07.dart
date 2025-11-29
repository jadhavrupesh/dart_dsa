/// Logic Problem 7: Named Constructors
///
/// Question: What is the value of `p.x` and `p.y`?
///
/// Options:
/// A) 0, 0
/// B) 10, 10
/// C) 0, 10
/// D) 10, 0

class Point {
  int x, y;
  Point(this.x, this.y);
  Point.origin() : x = 0, y = 0;
}

void main() {
  Point p = Point.origin();
  print("${p.x}, ${p.y}");
}
