// Q2 Create a class Temperature with an attribute celsius. Add a method toFahrenheit() that returns
//  the temperature in Fahrenheit. In main(), create an object and print the converted value.

void main() {
  Temperature todayTemperature = Temperature();
  print('Temperature in fehrenhiet : ${todayTemperature.toFehrenhiet(36)}');
}

class Temperature {
  double? celsius;

  double toFehrenhiet(celsius) {
    return celsius * 1.8 + 32;
  }
}
