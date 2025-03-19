/*
Inventory Management System
Topic: Classes, Objects, Encapsulation
Exercise: Define a class Product with properties
 like name, price, and quantity. Include methods to update the quantity
and calculate the total price for a given quantity.
 In the main function, create a Product object, update the quantity, and
print the total price.
*/
class Product {
  String name;
  double price;
  int quantity;

  Product({required this.name, required this.price, this.quantity = 0});

  void updateQuantity(int newQuantity) {
    quantity = newQuantity;
  }

  double calculateTotalPrice() {
    return price * quantity;
  }
}

void main() {
  Product product = Product(name: 'Coffee Mug', price: 12.99);

  product.updateQuantity(5);

  double totalPrice = product.calculateTotalPrice();

  print(
    "Total price for ${product.quantity} ${product.name}(s): \$ ${totalPrice.toStringAsFixed(2)}",
  );
}
