/*
Simple Calculator
Topic: Arithmetic operators
Exercise: Build a program that takes two numbers as
 input and performs addition, subtraction, multiplication, and
division. Display each result to the console.
*/
import 'dart:io';

void main() {
  print('Enter the First Number: ');
  double num1 = double.parse(stdin.readLineSync()!);
  print('Enter the Second Number: ');
  double num2 = double.parse(stdin.readLineSync()!);

  double sum = num1 + num2;
  double differnce = num1 - num2;
  double Mul = num1 * num2;
  double div = num1 / num2;

  print('Sum =  $sum');
  print('Difference =  $differnce');
  print('Mul =  $Mul');
  print('div =  $div');
}
