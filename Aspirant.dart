import 'Student.dart';

class Aspirant extends Student {
  String ScientificWork = 'None';
  Aspirant(super.fn, super.ln, super.g, super.avr, String sf) {
    ScientificWork = sf;
  }

  @override
  int getScholarship() {
    if (this.averageMark == 5) {
      return 200;
    }
    else {
      return 180;
    }
  }

}

void main() {
  //  Можно добавлять элементы при создании массива
  List stud = [Student("Вася", "Куралесов", "A", 5.0), Student("Петя", "Петров", "A", 5.0)];
  //  Можно добавлять элементы после создания
  stud.add(Student("Alice", "Smith", "A", 3.0));
  stud.add(Aspirant("Bob", "Burbon", "B", 5.0, "Научная работа"));
  stud.add(Aspirant("Dick", "Big", "D", 4.0, "Диссертация"));

  for (int i=0;i<5;i++) {
    print("Стипендия ${stud[i].firstName} ${stud[i].firstName} составляет ${stud[i].getScholarship()} рублей");
  }
}