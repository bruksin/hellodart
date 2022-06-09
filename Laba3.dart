void main() {
  var a = [2, 3, 4, 5, 6, 7, 8, 9, 10];
  var proizvedenie = 1;
  for (int i=0;i<9;i++) {
    if (i==0) proizvedenie = a[i];
    else proizvedenie *= a[i];
  }
  print('Произведение чисел = ${proizvedenie}');

}