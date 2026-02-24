// Q2
void main() {
  List<Shape> shapes = [
    Circle(radius: 7),
    Rectangle(width: 10, height: 5),
    Triangle(base: 8, height: 6),
    Circle(radius: -3),       
    Rectangle(width: 0, height: 5), 
  ];

  double totalArea = shapes.fold(0, (sum, s) => sum + s.area());
  double cost      = computeCost(totalArea);

  print('Total Area : ${totalArea.toStringAsFixed(2)} units²');
  print('Total Cost : \$${cost.toStringAsFixed(2)}');
}


double computeCost(double area) {
  if (area <= 50)  return area * 1.50;
  if (area <= 150) return 50 * 1.50 + (area - 50)  * 1.25;
                   return 50 * 1.50 + 100   * 1.25 + (area - 150) * 1.00;
}

class Shape {
  String label;
  Shape(this.label);
  double area() => 0;
}


class Circle extends Shape {
  double _radius;

  Circle({required double radius})
      : _radius = 1,
        super('Circle') {
    this.radius = radius;
  }

  double get radius => _radius;
  set radius(double v) { if (v <= 0) { print('Invalid radius'); } else { _radius = v; } }

  @override
  double area() => 3.14159 * _radius * _radius;
}

class Rectangle extends Shape {
  double _width, _height;

  Rectangle({required double width, required double height})
      : _width = 1, _height = 1,
        super('Rectangle') {
    this.width  = width;
    this.height = height;
  }

  double get width  => _width;
  double get height => _height;
  set width(double v)  { if (v <= 0) { print('Invalid width');  } else { _width  = v; } }
  set height(double v) { if (v <= 0) { print('Invalid height'); } else { _height = v; } }

  @override
  double area() => _width * _height;
}


class Triangle extends Shape {
  double _base, _height;

  Triangle({required double base, required double height})
      : _base = 1, _height = 1,
        super('Triangle') {
    this.base        = base;
    this.height      = height;
  }

  double get base   => _base;
  double get height => _height;
  set base(double v)   { if (v <= 0) { print('Invalid base');   } else { _base   = v; } }
  set height(double v) { if (v <= 0) { print('Invalid height'); } else { _height = v; } }

  @override
  double area() => 0.5 * _base * _height;
}