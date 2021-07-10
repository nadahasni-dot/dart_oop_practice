class Person {
  String name;
  Function(String hobby) doHobby;

  //* constructor person with optional named parameter
  Person(this.name, {this.doHobby});

  void enjoyTime() {
    if (doHobby != null) {
      doHobby(name);
    }
  }
}
