import 'person.dart';

void main(List<String> arguments) {
  //* create person object and pass name into doHobby
  var budi = Person('Budi', doHobby: (String name) {
    print('$name is playing game');
  });
  print(budi.name);

  budi.enjoyTime();

  //* create person object and ignore passing name into doHobby
  var joko = Person('Joko', doHobby: (_) {
    print('person is playing basketball');
  });
  print(joko.name);

  joko.enjoyTime();
}
