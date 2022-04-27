// convertToF - converts a list of temperatures in Celsius to Fahrenheit
// @temperaturesInC: a list of temperatures in Celsius
// @return: a list of temperatures in Fahrenheit
List<double> convertToF(List<double> temperaturesinC) {
  return temperaturesinC
      .map((temperature) =>
          (((temperature * (9 / 5)) + 32) * 100).round().toDouble() / 100)
      .toList();
}
