// Q2
//  Model shapes to compute total paintable area and cost.
//  Requirements:- Provide a general shape type (concrete class) with an area() method that can be overridden.- Implement at least three concrete shape types with encapsulated dimensions and validated
//  constructors (invalid → print; keep previous).- Use polymorphism with a mixed collection of shapes to compute total area (no type checks in client
//  code).- Apply tiered pricing: first 50 units at 1.50, next 100 at 1.25, remainder at 1.00; print total area and total
//  cost to 2 decimals

import 'dart:math';

void main() {
  Square square1 = Square(4);
  Rectangle recangle1 = Rectangle(4, 2);
  circle circle1 = circle(2);

  List<Shape> shapes = [square1, recangle1, circle1];
  double totalArea = 0;

  for (var item in shapes) {
    totalArea += item.area();
  }

  double cost = 0;
  if (totalArea <= 50 && totalArea > 0) {
    cost += totalArea * 1.5;
  } else if (totalArea <= 150) {
    cost += 50 * 1.5 + (totalArea - 50) * 1.25;
  } else {
    cost += 50 * 1.5 + 100 * 1.25 + (totalArea - 150) * 1;
  }

  print('Total area : ${totalArea.toStringAsFixed(2)}');
  print('total cost : ${cost.toStringAsFixed(2)}');
}

class Shape {
  double area() => 0;
}

class Square extends Shape {
  double _side;

  Square(this._side) {
    if (_side <= 0) {
      throw Exception('The side must be greater than 0');
    }
  }
  @override
  double area() => _side * _side;
}

class Rectangle extends Shape {
  double _height;
  double _weidth;

  Rectangle(this._height, this._weidth) {
    if (_height <= 0 || _weidth <= 0) {
      throw Exception('The values must be greater than 0');
    }
  }
  @override
  double area() => _height * _weidth;
}

class circle extends Shape {
  double _radius;

  circle(this._radius) {
    if (this._radius <= 0) {
      throw Exception('The radius must be greater than 0');
    }
  }
  @override
  double area() => pi * _radius * _radius;
}
