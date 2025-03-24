/*
Reverse a String
Write a function that takes a string as input and returns the string reversed.
Example:
reverseString('hello') -> 'olleh'


*/

String reverseString(String input) {
  return input.split('').reversed.join();
}

void main() {
  String text = "hello";
  print("Reversed string: ${reverseString(text)}");  // Output: olleh
}
