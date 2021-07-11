void main(List<String> arguments) {
  //* identifier
  var a = RegularClass(number: 5);
  var b = RegularClass(number: 5);

  //* check between objects if identical or not
  print(identical(a, b)); // is not identical

  //* identifier
  var c = const RegularClass(number: 3);
  var d = const RegularClass(number: 3);

  //* check between objects if identical or not
  print(identical(c, d)); // is identical
}

//* class
class RegularClass {
  //* final keyword
  final int number; // must be initialized directly or via constructor

  //* initialize number via constructor
  //* const keyword to be able to refers to same object
  const RegularClass({this.number});
}