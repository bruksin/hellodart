class Student {
  String firstName = 'Anon', lastName = 'Anonimous', group = 'Z';
  double averageMark = 0;

  Student(String fn, String ln, String g, double avr)
  {
    firstName = fn;
    lastName = ln;
    group = g;
    averageMark = avr;
  }

  int getScholarship() {
    if (this.averageMark == 5) {
      return 100;
    }
    else {
      return 80;
    }
  }

}