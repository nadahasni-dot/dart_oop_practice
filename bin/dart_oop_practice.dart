import 'package:dart_oop_practice/rectangle.dart';

void main(List<String> arguments) {
  //* create identifier for object
  Rectangle rectangle1, rectangle2;

  //* create instance object from class rectangle
  rectangle1 = Rectangle();
  //* set rectangle field
  rectangle1.height = 2;
  rectangle1.setLength(3);
  print('rectangle 1 area: ' + rectangle1.calculateArea().toString());

  //* create instance object from class rectangle
  rectangle2 = Rectangle();
  //* set rectangle field
  rectangle2.height = 10;
  rectangle2.setLength(5);
  print('rectangle 2 area: ' + rectangle2.area.toString());

  print('rectangle 1 + rectangle 2: ' + (rectangle1.area + rectangle2.area).toString());
}
