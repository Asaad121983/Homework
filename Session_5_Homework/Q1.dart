/*
Basic Arithmetic Calculator
Write a function that takes two numbers and an operator (+, -, *, /) 
as input and returns the result.
Handle cases where division by zero might occur.
*/

dynamic basicArithmetic(num num1, num num2, String operator) {
  switch (operator) {
    case '+':
      return num1 + num2;
    case '-':
      return num1 - num2;
    case '*':
      return num1 * num2;
    case '/':
      return num2 != 0 ? num1 / num2 : 'Error: Division by zero';
    default:
      return 'Error: Invalid operator';
  }
}

void main() {
  print(basicArithmetic(10, 5, '+')); 
  print(basicArithmetic(10, 5, '-')); 
  print(basicArithmetic(10, 5, '*')); 
  print(basicArithmetic(10, 5, '/')); 
}
