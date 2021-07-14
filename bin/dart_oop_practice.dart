import 'package:dart_oop_practice/generic_secure.dart';

void main(List<String> arguments) {
  //* create instance with generic type of int
  var genericObj = GenericSecure<int>(100, '123');

  //* create instance with generic type of int
  var genericObjString = GenericSecure<String>('This is a string', '123');

  //* create instance with generic type of DateTime
  var genericObjDateTime = GenericSecure<DateTime>(DateTime.now(), '123');

  print(genericObj.getData('123'));
  print(genericObjString.getData('123'));
  print(genericObjDateTime.getData('123').toString());
}