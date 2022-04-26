int add(int a, int b) {
  return a + b;
}

int sub(int a, int b) {
  return a - b;
}

String showFunc(int a, int b) {
  String s1 = 'Add $a + $b = ${add(a, b)}\n';
  String s2 = 'Sub $a - $b = ${sub(a, b)}';
  return '$s1' '$s2';
}
