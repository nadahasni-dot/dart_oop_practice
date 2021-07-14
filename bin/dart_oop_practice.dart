void main(List<String> arguments) {
  var monster = Monster();
  monster.move();
  monster.eat();

//  * Cascade Notation example
  var monster2 = Monster(status: MonsterStatus.poisoned)
    ..move()
    ..eat();
}

// * enum type
enum MonsterStatus { normal, poisoned, confused }

class Monster {
  final MonsterStatus
      status; // create _status with type of MonsterStatus (enum)

  Monster({this.status = MonsterStatus.normal});

  void move() {
    // condition based on enum (MonsterStatus)
    switch (status) {
      case MonsterStatus.normal:
        print('Monster is moving');
        break;
      case MonsterStatus.poisoned:
        print('Monster is poisoned and dying. can not move');
        break;
      case MonsterStatus.confused:
        print('Monster is confused. Dart language is confusing');
        break;
      default:
        print('Monster Died');
    }
  }

  void eat() {
    print('Yam yam.. Mmm.. delicious.. Yummy..');
  }
}
