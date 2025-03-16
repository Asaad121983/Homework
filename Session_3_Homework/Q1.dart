import 'dart:io';

//Function for Addition
double add(double a, double b, [List<double>? Others_Num]) {
  double sum = a + b;
  if (Others_Num != null) {
    for (var num in Others_Num) {
      sum += num;
    }
  }
  return sum;
}

// Function for subtraction
double subtract(double a, double b) {
  return a - b;
}

// Function for multiplication
double multiply(double a, double b) {
  return a * b;
}

// Function for division
double divide(double a, double b) {
  return a / b;
}

// Main function
void main() {
  // Taking user input
  print("Enter the first number:");
  double num1 = double.parse(stdin.readLineSync()!);

  print("Enter the second number:");
  double num2 = double.parse(stdin.readLineSync()!);

  // Performing operations
  print("\nResults:");
  print("Addition: ${add(num1, num2)}");

  print("Subtraction: ${subtract(num1, num2)}");
  print("Multiplication: ${multiply(num1, num2)}");
  print("Division: ${divide(num1, num2)}");

  // Demonstrating optional parameters (adding multiple numbers)
  print("Adding multiple numbers: ${add(num1, num2, [5])}");
}
