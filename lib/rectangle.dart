//* create class blueprint
class Rectangle {
  //* field of class
  double _lenght; //private
  double _height; //private

  //* method getter setter
  void setLength(double value) {
    if (value < 0) { // check if negative
      value *= -1;
    }
    _lenght = value;
  }

  double getLength() {
    return _lenght;
  }

  //* property getter setter
  set height(double value) {
    if (value < 0) { // check if negative
      value *= -1;
    }
    _height = value;
  }

  double get height => _height;

  //* create get area calculation using property getter setter
  double get area => _lenght * _height;

  //* method of class
  double calculateArea() {
    //* this keyword is optional on dart
    return _lenght * _height;
  }  
}