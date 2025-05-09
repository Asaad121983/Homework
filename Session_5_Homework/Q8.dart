/*
Sum of List Elements
Write a function that takes a list of numbers and returns the sum of all elements.
Example:
sumList([1, 2, 3, 4, 5]) -> 15
*/

int sumList(List<int> numbers) {

  int sum = 0;
  for (int number in numbers) {
    sum += number;
  }
  return sum;
}

void main() {
  List<int> nums = [1, 2, 3, 4, 5];
  print("Sum of list: ${sumList(nums)}");  // Output: 15
}
