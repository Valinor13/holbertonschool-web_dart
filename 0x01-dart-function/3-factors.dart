import 'dart:math';

// factor computes the factors of a positive integer
// @f: the positive integer to factor
// @return: the int factors of @f
int factor(int f) {
  int factors = 0;
  for (int i = 1; i <= sqrt(f); i++) {
    if (f % i == 0) {
      if (f / i != i) {
        factors++;
      }
      factors++;
    }
  }
  return factors;
}
