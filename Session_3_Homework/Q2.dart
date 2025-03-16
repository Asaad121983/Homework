import 'dart:io';

List<String> groceryList = ['Tomato', 'apple', 'xx'];

// Function to add an item
void addItem(String item) {
  groceryList.add(item);
}

// Function to remove
void removeItem({String? item}) {
  if (item != null) {
    groceryList.remove(item);
  }
}

// Function to display all items
void displayList() {
  if (groceryList.isEmpty) {
    print("grocery list is empty");
  } else {
    print("\nYour Grocery List:");
    for (int i = 0; i < groceryList.length; i++) {
      print("${groceryList[i]}");
    }
  }
}

// Main function with menu
void main() {
  stdout.write("Enter item to add: ");
  String? newItem = stdin.readLineSync();
  if (newItem != null) {
    addItem(newItem);
  }
  stdout.write("Enter item name ");
  String? input = stdin.readLineSync();
  removeItem(item: input);

  displayList();
}
