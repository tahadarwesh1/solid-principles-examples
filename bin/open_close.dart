void main(List<String> arguments) {
  Circle circle = Circle(radius: 5);

  Square square = Square(side: 5);

  AreaCalculator areaCalculator = AreaCalculator();
  areaCalculator.calculateArea(circle);
  areaCalculator.calculateArea(square);
}

// Open-Closed Principle
// Software entities should be open for extension, but closed for modification.
// In the following example, the Shape class is an abstract class that has a calculateArea method.
// The Circle, Square, Rectangle, and Triangle classes implement the Shape class and override the calculateArea method to calculate the area of the respective shapes.
// If a new shape is added, the Shape class does not need to be modified. The new shape class can simply implement the Shape class and override the calculateArea method to calculate the area of the new shape.


//! before applying the Open-Closed Principle
/*
class Shape {
  String type;

  Shape({required this.type});
}

// If a new shape is added, the AreaCalculator class needs to be modified to handle the new shape.
class AreaCalculator {
  double calculateArea(Shape shape) {
    if (shape.type == 'circle') {
      return 3.14 * 5 * 5;
    } else if (shape.type == 'square') {
      return 5 * 5;
    } else {
      return 0;
    }
  }
}

*/

//* after applying the Open-Closed Principle
abstract interface class Shape {
  double calculateArea();
}

class Circle implements Shape {
  final double radius;

  Circle({required this.radius});

  @override
  double calculateArea() {
    double area = 3.14 * radius * radius;
    print('Area of Circle: $area');
    return area;
  }
}

class Square implements Shape {
  final double side;

  Square({required this.side});

  @override
  double calculateArea() {
    double area = side * side;
    print('Area of Square: $area');
    return area;
  }
}

class Rectangle implements Shape {
  final double length;
  final double width;

  Rectangle({required this.length, required this.width});

  @override
  double calculateArea() {
    double area = length * width;
    print('Area of Rectangle: $area');
    return area;
  }
}

class Triangle implements Shape {
  final double base;
  final double height;

  Triangle({required this.base, required this.height});

  @override
  double calculateArea() {
    double area = 0.5 * base * height;
    print('Area of Triangle: $area');
    return area;
  }
}

// The AreaCalculator class has a calculateArea method that takes a Shape object as an argument and calculates the area of the shape using the calculateArea method of the Shape object.
class AreaCalculator {
  double calculateArea(Shape shape) {
    return shape.calculateArea();
  }
}
