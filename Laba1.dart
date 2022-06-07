class Bicycle {
  int cadence;
  int _speed = 0;
  int get speed => _speed;
  int gear;

  Bicycle(this.cadence, this.gear);

  void applyBrake(int decrement) {
    _speed -= decrement;
  }

  void speedUp(int increment) {
    _speed += increment;
  }


  @override
  String toString() => 'Bicycle: $_speed mph';
}

class Summa {
  int a1, a2, a3;
  int? sum=0;

  Summa(this.a1, this.a2, this.a3);


  @override
  String toString() => 'Summa : $sum';
}

void main() {
  var bike = Bicycle(2, 1);
  print(bike);

  var res = Summa(1, 2, 3);
  print(res);
}