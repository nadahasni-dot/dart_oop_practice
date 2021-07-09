import 'package:dart_oop_practice/eagle_monster.dart';
import 'package:dart_oop_practice/hero.dart';
import 'package:dart_oop_practice/knight.dart';
import 'package:dart_oop_practice/monster.dart';
import 'package:dart_oop_practice/shark_monster.dart';

void main(List<String> arguments) {
  //* create instance from knight
  Knight knight = Knight();

  //* set healthpoint extended from character
  knight.healthPoint = 80;

  //* access inherited property
  print('knight HP: ' + knight.healthPoint.toString());

  //* kill a monster
  print(knight.killAMonster());
  print('knight HP: ' + knight.healthPoint.toString());

  //* drink and restore hp
  print('knight drink: ' + knight.drink());  
  print('knight HP: ' + knight.healthPoint.toString());
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
  print((monsters[2] as EagleMonster).flyAttack());
}
