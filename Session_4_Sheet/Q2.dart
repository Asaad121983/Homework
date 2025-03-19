/* 
Variable Manipulation
Topic: Variables, Data types (int, double, String, bool)
Exercise: Create a Dart program that declares and 
initializes variables of different types (int, double, String, bool).
Calculate the sum of two numbers, concatenate two strings,
 and print out the results.
*/
void main() {
  int age = 30;
  double height = 177.5;
  String Name = 'Asaad';
  bool isdone = true;

  int num1 = 15;
  int num2 = 25;
  int sum = addition(num1, num2);

  String FirstName = 'Asaad';
  String LastName = 'Elsaadany';
  String FullName = Concat(FirstName, LastName);
  print("Sum of $num1 and $num2 is $sum");
  print("Full name is $FullName");
}

int addition(int a, int b) {
  return a + b;
}

String Concat(String s1, String s2) {
  return s1 + s2;
}
