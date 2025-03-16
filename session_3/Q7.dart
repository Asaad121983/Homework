/*
Exercise 7: Function with Parameters
Objective: Understand how to pass parameters to functions.
Task: Write a function addNumbers that 
takes two integers as parameters and returns their sum.
Call this function in the main() method and print the result.
*/

void main() {
  int result = addNumbers(5, 8);
  print(result);
}

int addNumbers(int a, int b) {
  return a + b;
}
