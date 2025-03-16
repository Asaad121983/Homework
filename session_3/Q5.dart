/*
Exercise 5: Using forEach on a List
Objective: Understand how to use the forEach method.
Task: Write a program that defines a list of strings 
(e.g., names of fruits) and prints each item using
the forEach method.
*/
void main() {
  List<String> fruits = ['banana', 'Apple', 'cherry'];
  fruits.forEach((fruit) {
    print(fruit);
  });
}
