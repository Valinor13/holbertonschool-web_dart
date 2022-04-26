import 'dart:math';

// recursiveHelper - returns the number of factors of f
// @factor: the number to factor
// @counter: the number to divide by
// @loops: the number of times to recurse
// @factors: the running count of factors
// @return: int factors
int recursiveHelper(int factor, int counter, int loops, int factors) {
  if (loops == 0) {
    return factors;
  } else {
    if (factor % counter == 0) {
      if (factor / counter != counter) {
        factors++;
      }
      return recursiveHelper(factor, counter + 1, loops - 1, factors + 1);
    } else {
      return recursiveHelper(factor, counter + 1, loops - 1, factors);
    }
  }
}

// factor - using recursion, it computes the factors of a positive integer
// @f: the positive integer to factor
// @return: the int factors of @f
int factor(int f) {
  return recursiveHelper(f, 1, sqrt(f).floor(), 0);
}
