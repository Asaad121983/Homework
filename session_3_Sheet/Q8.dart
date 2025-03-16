/*
Exercise 8: Optional Parameters
Objective: Practice using optional parameters in functions.
Task: Write a function greetUser that 
takes an optional name parameter. If the name is provided,
greet the user with their name; if not, greet with 'Guest'.

*/

void main() {
  print(greetUser());
  print(greetUser('Asaad'));
}

String greetUser([String name='Guest'])
 {
   return 'Hello, $name';
 }
