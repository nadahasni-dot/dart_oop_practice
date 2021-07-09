import 'package:dart_oop_practice/character.dart';

//* extended from character (child class)
//* abstract class cannot create direct instance from this class
abstract class Monster extends Character {
  String eatHuman() => 'Hmm.. Delicius.. Yummy!';
}
