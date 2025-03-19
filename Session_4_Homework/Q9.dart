/*
9. OOP, Constructors & Getters
Create a class `Rectangle` with:
- Private attributes `_width` and `_height`.
- A constructor that initializes the values.
- A getter `area` that calculates and returns the area.
In `main()`, create a `Rectangle` object and print its area.
*/

void main() {
  Rectangle rect1 = Rectangle(4, 3);
  print("Area: ${rect1.area}");
}

class Rectangle {
  double _width, _height;

  Rectangle(this._width, this._height);

  double get area {
    return _width * _height;
  }
}
