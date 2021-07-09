//* create class blueprint
class Rectangle {
  //* field of class
  double lenght;
  double height;

  //* method of class
  double calculateArea() {
    //* this keyword is optional on dart
    return this.lenght * height;
  }
}

void main(List<String> arguments) {
  //* create identifier for object
  Rectangle rectangle1, rectangle2;

  //* create object from class rectangle
  rectangle1 = Rectangle();
  //* set rectangle field
  rectangle1.height = 2;
  rectangle1.lenght = 3;
  print('rectangle 1 area: ' + rectangle1.calculateArea().toString());

  //* create object from class rectangle
  rectangle2 = Rectangle();
  //* set rectangle field
  rectangle2.height = 10;
  rectangle2.lenght = 5;
  print('rectangle 2 area: ' + rectangle2.calculateArea().toString());

  print('rectangle 1 + rectangle 2: ' + (rectangle1.calculateArea() + rectangle2.calculateArea()).toString());
}
