
import 'dart:io';

void main(List<String> arguments) {
  String name = stdin.readLineSync();
  int age = int.tryParse(stdin.readLineSync());

  print('Hello $name your age is $age years old.');
}
