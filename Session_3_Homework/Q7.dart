import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  String? input = stdin.readLineSync();

  if (input != null) {
    double? number = double.tryParse(input);

    if (number! > 0) {
      print("The number $number is positive.");
    } else if (number < 0) {
      print("The number $number is negative.");
    } else {
      print("The number is zero.");
    }
  }
}
