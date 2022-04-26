import 'dart:math';

int _generateRandomIncludingNegative(int max) {
  var randomGenerator = Random();

  var positive = randomGenerator.nextBool();

  var randInt = randomGenerator.nextInt(max);

  var result = positive ? randInt : 0 - randInt;
  return result;
}

void main() {
  var number = _generateRandomIncludingNegative(10);

  /*
  Write Your code below 
   */
  number == 0
      ? print('${number} is zero')
      : number < 0
          ? print('${number} is negative')
          : print('${number} is positive');
}
