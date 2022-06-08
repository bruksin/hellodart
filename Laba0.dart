import 'dart:math';

class Bicycle {
  int cadence;
  int _speed = 0;
  int get speed => _speed;
  int gear;

  Bicycle(this.cadence, this.gear);

  void applyBrake(int decrement) {
    _speed -= decrement;
  }

  void speedUp(int increment) {
    _speed += increment;
  }


  @override
  String toString() => 'Bicycle: $_speed mph';
}

class Summa {
  int a1, a2, a3;

  Summa(this.a1, this.a2, this.a3);

  num get sum => a1+a2+a3;

  @override
  String toString() => 'Summa : $sum $a1';
}

class Rectangle {
  int width;
  int height;
  Point origin;

  Rectangle({this.origin = const Point(0, 0), this.width = 0, this.height = 0});

  @override
  String toString() =>
      'Origin: (${origin.x}, ${origin.y}), width: $width, height: $height';
}

abstract class Shape {
  factory Shape(String type) {
    if (type == 'circle') return Circle(2);
    if (type == 'square') return Square(2);
    throw 'Can\'t create $type.';
  }
  num get area;
}

class Circle implements Shape {
  final num radius;
  Circle(this.radius);
  num get area => pi * pow(radius, 2);
}

class Square implements Shape {
  final num side;
  Square(this.side);
  num get area => pow(side, 2);
}

class CircleMock implements Circle {
  num area = 0;
  num radius = 0;
}

String scream(int length) => "A${'a' * length}h!";

void main() {
  var bike = Bicycle(2, 1);
  print(bike);

  var res = Summa(1, 2, 3);
  print(res);
  print(res.sum);


  print(Rectangle(origin: const Point(10, 20), width: 100, height: 200));
  print(Rectangle(origin: const Point(10, 10)));
  print(Rectangle(width: 200));
  print(Rectangle());

  final circle = Shape('circle');
  final square = Shape('square');
  print(circle.area);
  print(square.area);

  final values = [1, 2, 3, 5, 10, 50];
  for (var length in values) {
    print(scream(length));
  }

  values.map(scream).forEach(print);

  values.skip(1).take(3).map(scream).forEach(print);
}