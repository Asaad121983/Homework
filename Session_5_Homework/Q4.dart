/*
Find Prime Numbers in a Range
Write a function that takes two numbers (start, end) 
and returns a list of all prime numbers between them.
Ensure that the function correctly identifies prime numbers
 and handles edge cases where start is
greater than end.
*/

bool isPrime(int number) {
  if (number < 2) return false;
  for (int i = 2; i * i <= number; i++) {
    if (number % i == 0) return false;
  }
  return true;
}

void main() {
  print(isPrime(37));
  print(isPrime(40));
  print(isPrime(97));
}
