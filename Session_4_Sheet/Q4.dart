/*
Collection Operations
Topic: Lists, Sets, Maps
Exercise:
- Create a list of numbers, add a few elements, remove one, and display the final list.
- Create a set with some duplicate elements and print the set to show that duplicates are removed.
- Create a map with keys as student names and values as grades. 
Print a student's grade by accessing their name in the map.
*/
void main() {
  List<int> numbers = [1, 2, 3, 4];
  numbers.add(9);
  numbers.remove(2);
  print('The list : $numbers');

  Set<int> numberSet = {1, 2, 2, 3, 3, 3, 4, 5};
  print('The Set : $numberSet');

  Map<String, String> studentGrades = {'Asaad': 'A', 'Ali': 'B', 'Hana': 'C'};
  String studentName = 'Asaad';
  print("$studentName's   Grade : ${studentGrades[studentName]}");
}
