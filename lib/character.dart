//* parent class
class Character {
  int _healthPoint;

  int get healthPoint => _healthPoint;

  set healthPoint(int value) {
    if (value < 0) {
      value = 0;
    }
    _healthPoint = value;
  }
}
