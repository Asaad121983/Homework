
//4. Maps, Functions & User Input
/*
4. Maps, Functions & User Input
Create a Dart program that:
- Declares a `Map<String, int>` where keys are fruit names and values are their
prices.
- Implements a function `getPrice(String fruitName)` that returns the price of a
given fruit.
- If the fruit is not found, return -1.
Call the function inside `main()` and print the result.
*/
void main() {
  var fruits = {"apple": 100, "banana": 50, "cherry": 75};
  print("Price: ${getPrice(fruits, "banana")}");
}

int getPrice(Map<String, int> fruits, String fruitName) {
  return fruits[fruitName] ?? -1;
}