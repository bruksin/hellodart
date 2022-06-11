class User {
  String name = 'Anon';
  int age = 0;

  User(String name, int age) {
    this.name = name;
    this.age = age;
  }

  String getName() {
    return name;
  }

  int getAge() {
    return age;
  }
}

//  Интерфейс для читателя
class roleReader {
  void takeBook(int book){

  }
  void returnBook(int book){

  }
}

// класс читатель использующий интерфейс
class Reader extends User implements roleReader {
  int numOfBooks = 0;

  Reader(super.name, super.age, int nob) {
    numOfBooks = nob;
  }

  Reader.NoBook(super.name, super.age) {
    numOfBooks = 0;
  }
  int getNumOfBooks() {
    return numOfBooks;
  }

  void takeBook(int book) {
    numOfBooks += book;
    print("${super.getName()} взял ${book} книг. Всего он должен вернуть ${getNumOfBooks()} книг");
  }

  void returnBook(int book) {
    numOfBooks -= book;
    print("${super.getName()} вернул ${book} книг. Осталось  вернуть ${getNumOfBooks()} книг");
  }
}

//  Интерфейс для библиотекаря
class roleLibra {
  void orderBook(int book){

  }
}

//  Интерфейс для поставщика книг
class roleProvider {
  void deliveryBook(int book){

  }
}

//  Интерфейс для администратора
class roleAdmin {
  void findBook(String book){}
  void getBook(String book){}
  void notifyDelay(Reader reader){}
}


class Libra extends User implements roleLibra {

  Libra(String name, int age) : super('', 0);

  void orderBook(int book) {
    print("Библиотекарь ${super.getName()} заказал(а) ${book} книг.");
  }
}

class Provider extends User implements roleProvider {

  Provider(String name, int age) : super('', 0);

  void deliveryBook(int book) {
    print("Поставщик ${super.getName()} доставил в библиотеку ${book} книг.");
  }
}

class Admin extends User implements roleAdmin {

  Admin(String name, int age) : super('', 0);

  void findBook(String book) {
    print("Администратор ${super.getName()} пошел искать книгу ${book}");
  }
  void getBook(String book) {
    print("Администратор ${super.getName()} выдал книгу${book}");
  }

  void notifyDelay(Reader reader) {
    print("Читатель ${reader.getName()} задолжал ${reader.numOfBooks} книг");
  }
}

void main() {
  Reader reader1 = Reader.NoBook("Вася", 10);
  reader1.takeBook(17);
  reader1.returnBook(7);

  Libra libra1 = Libra("Марья Петровна", 60);
  libra1.orderBook(200);

  Provider prov1 = Provider("Возген", 60);
  prov1.deliveryBook(5);

  Admin admin1 = Admin("Возген", 60);
  admin1.findBook("Java для чайников");
  admin1.getBook("Чайники для Java");
  admin1.notifyDelay(reader1);
}