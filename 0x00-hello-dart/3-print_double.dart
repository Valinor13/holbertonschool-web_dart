import 'dart:math';

double roundNum(double value, int places) {
  var mod = pow(10.0, places);
  return ((value * mod).round().toDouble() / mod);
}

void main() {
  var n = 3.14159265359;
  print('Double: ${roundNum(n, 2)}\n');
}
