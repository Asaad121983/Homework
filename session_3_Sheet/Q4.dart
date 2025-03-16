/*
Working with Collections
Exercise 4: Iterating with a for-in Loop
Objective: Understand the for-in loop for iterating through collections.
Task: Write a program that defines a list of integers and
 prints each number using a for-in loop.
*/
void main() {
  List<int> mylist = [1, 2, 5, 6, 3, 9];
  for (var num in mylist) {
    print(num);
  }
}
