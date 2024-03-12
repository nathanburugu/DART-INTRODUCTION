import 'dart:io';

// Interface for a shape
abstract class Shape {
  double calculateArea();
}

// Base class for geometric shapes
class GeometricShape implements Shape {
  double calculateArea() {
    return 0.0; // Default implementation
  }
}

// Class for rectangle, inheriting from GeometricShape
class Rectangle extends GeometricShape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double calculateArea() {
    return width * height;
  }
}

// Class for reading rectangle data from a file
class RectangleReader {
  List<Rectangle> readRectanglesFromFile(String filePath) {
    List<Rectangle> rectangles = [];

    try {
      File file = File(filePath);
      List<String> lines = file.readAsLinesSync();

      for (String line in lines) {
        List<String> parts = line.split(',');
        double width = double.parse(parts[0]);
        double height = double.parse(parts[1]);
        rectangles.add(Rectangle(width, height));
      }
    } catch (e) {
      print("Error reading file: $e");
    }

    return rectangles;
  }
}

// Method demonstrating the use of a loop
void printAreas(List<Shape> shapes) {
  for (Shape shape in shapes) {
    print("Area: ${shape.calculateArea()}");
  }
}

void main() {
  // Initialize rectangles from file
  RectangleReader reader = RectangleReader();
  List<Rectangle> rectangles = reader.readRectanglesFromFile('rectangle_data.txt');

  // Print areas of rectangles
  printAreas(rectangles);
}
