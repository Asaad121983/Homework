import 'dart:io';


void main() {
  int minRange = 10;
  int maxRange = 50;

  stdout.write("Enter a number: ");
  String? input = stdin.readLineSync();

    int? number = int.tryParse(input!);

    if (number == null) {
      print("Please enter a valid integer.");
    } else {
      if (number >= minRange && number <= maxRange) {
        print("The number $number is within the range.");
      } else {
        print("The number $number is out of range.");
      }
    }
  } 

