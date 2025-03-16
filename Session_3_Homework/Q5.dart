class Car {
  String brand;
  String model;
  int year;
  double mileage;

  Car(this.brand, this.model, this.year, this.mileage);

  void displayInfo() {
    print("Brand: $brand");
    print("Model: $model");
    print("Year: $year");
    print("Mileage: ${mileage.toStringAsFixed(1)}");
  }
}

void main() {
  Car myCar = Car("Toyota", "Corolla", 2024, 25000);
  myCar.displayInfo();
}
