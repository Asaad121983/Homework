/*
Exercise 3: Using the do-while Loop
Objective: Practice the do-while loop and the condition evaluation.
Task: Write a program that asks the user to input a number, then prints whether the number is odd
or even. The program should repeat the question until the user enters a negative number.
Working with Collections


*/
import 'dart:io';
void main() {
  int number;
  do {
    print('Enter a number (enter a negative number to Stop):');
    number = int.parse(stdin.readLineSync()!);
    if (number < 0) {
      print('stop');
    } else {
      if (number % 2 == 0) {
        print('$number is even.');
      } else {
        print('$number is odd.');
      }
    }
  } while (number >= 0);
}
