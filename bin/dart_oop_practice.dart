import 'person.dart';

void main(List<String> arguments) {
  //* create person object and pass name into doHobby
  var budi = Person('Budi', 200, doHobby: (String name) {
    print('$name is playing game');
  });
  print(budi.name);
  print(budi.age.toString());

  budi.enjoyTime();

  //* create person object and ignore passing name into doHobby
  var joko = Person('Joko', 24, doHobby: (_) {
    print('person is playing basketball');
  });
  print(joko.name);
  print(joko.age.toString());

  joko.enjoyTime();

  //*show max age
  print('Max Age of a Person: ${Person.maxAge.toString()}');

  //! will be error. because maxAge is a member of class not a member of an object
  //! print('Max Age of joko: ${joko.maxAge}');
}