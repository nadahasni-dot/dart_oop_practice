import 'person.dart';

class Student extends Person {
  //* handling if studentname is not passed, used 'student name' as default in Person Constructor
  Student({String studentName = 'student name'}) : super(name: studentName) {
    print('constructor student');
  }
}
