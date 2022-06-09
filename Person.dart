class Person {
  String fullName = "Anonymous";
  int age = 0;

  Person.undefined(){
    fullName = "Anonymous";
    age = 18;
  }
  Person.fromName(String n){
    fullName = n;
    age = 18;
  }
  Person(String n, int a)
  {
    fullName = n;
    age = a;
  }

  void move(){
    print('${fullName} живет ${age} лет');
  }
  void talk(){
    print('Такой-то  ${fullName} говорит');
  }
}

void main() {
  var alice = Person.undefined();
  alice.talk();

  var bob = Person("Bob", 11);
  bob.move();
}