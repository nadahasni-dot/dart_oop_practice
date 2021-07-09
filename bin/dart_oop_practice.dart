import 'package:dart_oop_practice/eagle_monster.dart';
import 'package:dart_oop_practice/hero.dart';
import 'package:dart_oop_practice/monster.dart';
import 'package:dart_oop_practice/shark_monster.dart';

void main(List<String> arguments) {
  //* create instance from hero and monster
  Hero hero = Hero();
  Monster monster = Monster();

  //* set healthpoint extended from character
  hero.healthPoint = 100;
  monster.healthPoint = 50;

  //* access inherited property
  print('Hero HP: ' + hero.healthPoint.toString());
  print('Monster HP: ' + monster.healthPoint.toString());

  //* kill a monster
  print(hero.killAMonster());
  monster.healthPoint = 0;
  print('Hero HP: ' + hero.healthPoint.toString());
  print('Monster HP: ' + monster.healthPoint.toString());

  print('==========');

  //* populate list of monsters
  List<Monster> monsters = [];

  //* add each monster to list
  monsters.add(SharkMonster());
  monsters.add(SharkMonster());
  monsters.add(EagleMonster());

  //* monster killing human
  for (Monster monster in monsters) {
    //* check the type of monster
    if (monster is SharkMonster) {
      print(monster.swim());
    }

    if (monster is EagleMonster) {
      print(monster.fly());
    }

    print(monster.eatHuman());
  }

  print('==============');
  //* shark monster inside list
  print((monsters[0] as SharkMonster).swim());

  //! will be error, beacasue monsters[2] is not a shark
  print((monsters[2] as SharkMonster).swim());
}
