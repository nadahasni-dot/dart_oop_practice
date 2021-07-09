import 'package:dart_oop_practice/character.dart';

//* extended from character (child class)
//* abstract class cannot create direct instance
abstract class Hero extends Character {
  String killAMonster() => 'Hero: Take this...!';
}
