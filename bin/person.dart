class Person {
  String name;

  //* constructor person with optional named parameter
  Person({String name = 'no name'}) {
    print('constructor person');

    //* setting name
    this.name = name;
  }
}
