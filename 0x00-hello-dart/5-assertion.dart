void main(List<String> args) {
  /*
  Write Your code below 
   */
  num.parse(args[0]) >= 80
      ? print('You Passed')
      : throw new AssertionError('The score must be bigger or equal to 80');
}
