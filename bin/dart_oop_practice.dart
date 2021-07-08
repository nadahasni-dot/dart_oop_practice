import 'dart:io';

void main(List<String> arguments) {
  int number = int.tryParse(stdin.readLineSync());

  //* basic if else
  // if (number > 0) {
  //   print('positive');
  // } else if (number < 0) {
  //   print('negative');
  // } else {
  //   print('zero');
  // }

  //* ternary
  // print((number > 0) ? 'positve' : 'negative or zero');

  //* switch case for static value
  switch (number) {
    case 0:
      print('zero');
      break;
    case 1:
      print('one');
      break;
    case 2:
      print('two');
      break;
    default:
      print('other number');
  }
}
