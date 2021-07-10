import 'package:pedantic/pedantic.dart';

import 'person.dart';

void main(List<String> arguments) async {
  //* create person object and pass name into doHobby
  var budi = Person('Budi', 200, doHobby: (String name) {
    print('$name is playing game');
  });
  
  //* wait 3s for getDataAsync completed then do next command
  await budi.getDataAsync();

  print(budi.name);

  //* dont wait for this async method and do next command directly
  unawaited(budi.getDataAsync());

  //* other ways to handle future by calling callback .then()
  //* after getDataAsync completed then do something
  budi.getDataAsync().then((_) {
    print('Get Data Completed');
  });

  print(budi.age);
}