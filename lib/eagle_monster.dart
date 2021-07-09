import 'package:dart_oop_practice/flying_monster.dart';
import 'package:dart_oop_practice/monster.dart';

//* extended from monster (child class)
//* implement from interface FlyinMonster
class EagleMonster extends Monster implements FlyingMonster {
  @override
  String fly() => 'Eagle: Swoooosh...';

  //*override eatHuman method from Monster
  @override
  String eatHuman() => 'Eagle: Swooshh... Yummy!';

  @override
  String flyAttack() => 'Eagle: Swoosh... Roar... Roarr';
}