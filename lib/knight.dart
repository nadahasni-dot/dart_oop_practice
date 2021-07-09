import 'package:dart_oop_practice/drink_ability_mixin.dart';
import 'package:dart_oop_practice/hero.dart';

class Knight extends Hero with DrinkAbilityMixin {
  @override
  String killAMonster() => 'Haargh, blade swing!!!';

  @override
  String drink() {
    //* add healthpoint by 20
    super.healthPoint += 20;

    if (super.healthPoint > 100) {
      super.healthPoint = 100;
    }
    
    return super.drink();
  }
}
