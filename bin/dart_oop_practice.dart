import 'student.dart';

void main(List<String> arguments) {
  Student joko = Student();
  Student budi = Student(studentName: 'Budi');

  print(joko.name);
  print(budi.name);
}
