/*
Temperature Converter
Write a function that converts temperature from Celsius to Fahrenheit and vice versa.
Accept temperature value and unit ('C' for Celsius, 'F' for Fahrenheit) as inputs.
Convert accordingly and return the result.


*/

dynamic temperatureConverter(double value, String unit) {
  if (unit.toUpperCase() == 'C') {
    return (value * 9 / 5) + 32; // Convert Celsius to Fahrenheit
  } else if (unit.toUpperCase() == 'F') {
    return (value - 32) * 5 / 9; // Convert Fahrenheit to Celsius
  } else {
    return'Error: Invalid unit. Use "C" for Celsius or "F" for Fahrenheit.';
  }
}

void main() {
  print(temperatureConverter(100, 'C')); // Output: 212.0 (Fahrenheit)
  print(temperatureConverter(33, 'F'));  // Output: 0.0 (Celsius)
}

