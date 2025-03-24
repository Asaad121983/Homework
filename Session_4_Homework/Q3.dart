
//3. Lists, Loops & If Conditions
/*
3. Lists, Loops & If Conditions
Create a list of numbers. Iterate over the list and:
- If a number is even, print "Even: <number>".
- If a number is odd, print "Odd: <number>".
*/

void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  EvenOdd(numbers);
}
void EvenOdd(List<int> numbers) {
  for (var number in numbers) {
    if (number % 2 == 0) {
      print("$number : is Even");
    } else {
      print("$number : is Odd");
    }
  }
}