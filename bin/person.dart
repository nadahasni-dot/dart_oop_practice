class Person {
  //* will be member of object after create instance of this class
  String name;
  int age;
  Function(String hobby) doHobby;

  //* static means, this field will be member of Class not a member of an Object that created from class
  static int maxAge = 150;

  //* constructor person with optional named parameter
  Person(this.name, int age, {this.doHobby}) {
    if (age > maxAge) {
      // check if age is greater than maxAge
      this.age = maxAge;
    } else {
      this.age = age;
    }
  }

  void enjoyTime() {
    if (doHobby != null) {
      doHobby(name);
    }
  }

  //* asynchronous method to get data from db
  Future<void> getDataAsync() async {
    //* wait for 3 seconds
    await Future.delayed(Duration(seconds: 3));
    print('Get Data $name User Success: ($name | $age years old)');
  }
}
