// calculateArea - Calculate the area of a triangle.
// @height: The height of the triangle.
// @base: The base of the triangle.
// @return: The area of the triangle.
double calculateArea(double height, double base) {
  return ((((height * base) / 2) * 100).round().toDouble() / 100);
}
