import 'dart:convert';
import 'dart:io';

void main() {
  var a =  List.filled(3, 0);
  var vvod;
  print("Программа расчета суммы трех чисел:");
  stdout.write("Введите первое число: ");
  vvod = stdin.readLineSync(encoding: utf8);
  a[0] = int.parse(vvod);
  stdout.write("Введите второе число: ");
  vvod = stdin.readLineSync(encoding: utf8);
  a[1] = int.parse(vvod);
  stdout.write("Введите третье число: ");
  vvod = stdin.readLineSync(encoding: utf8);
  a[2] = int.parse(vvod);
  print('Сумма чисел = ${summa(a)}');
}

int summa(var a) {
  return a[0]+a[1]+a[2];
}
