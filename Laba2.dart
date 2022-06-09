import 'dart:convert';
import 'dart:io';

void main() {
  int secret = 10;
  var popytka;
  var vvod;

  print("Угадай число");
  do {

    stdout.write("Введите число от 1 до 100: ");
    vvod = stdin.readLineSync(encoding: utf8);
    popytka = int.parse(vvod);
    if (popytka != secret) {
      print('Не угадал. Попробуй еще раз!');
    }
  } while (popytka != secret);
  print('Угадал!!');

}