import 'dart:io';

class Matrix {
  int rows = 1;
  int columns = 1;
  var matrix;

  Matrix.undefined() {
    rows    = 1;
    columns = 1;
    matrix  =  List.generate(rows, (i) => List.filled(columns, .0, growable: false), growable: false);
  }
  Matrix.fromSize(int r, int c) {
    rows    = r;
    columns = c;
    matrix  =  List.generate(rows, (i) => List.filled(columns, .0, growable: false), growable: false);
  }
  Matrix(int r, int c, var m) {
    rows    = r;
    columns = c;
    matrix  =  m;
  }

  void PrintMatrix() {
    for (int i=0;i<rows;i++) {
      for (int j=0;j<columns;j++) {
        stdout.write('${this.matrix[i][j]} ');
      }
      print('');
    }
  }

  Matrix SumMatrix(Matrix m) {
    Matrix ResM = Matrix.fromSize(rows, columns);

    //Если сложение невозможно выводим нулевую матрицу
    if (this.rows == m.rows && this.columns == m.columns) {
      for (int i = 0; i < rows; i++) {
        for (int j = 0; j < columns; j++) {
          ResM.matrix[i][j] = (this.matrix[i][j] + m.matrix[i][j]).toDouble();
        }
      }
    }
    return ResM;
  }

  Matrix  MultiNumber(double n) {
    Matrix ResM = Matrix.fromSize(rows, columns);

    for (int i = 0; i < rows; i++) {
      for (int j = 0; j < columns; j++) {
        ResM.matrix[i][j] = this.matrix[i][j] * n;
      }
    }
    return ResM;
  }

  Matrix MultiMatrix(Matrix m) {
    Matrix ResM = Matrix.fromSize(this.rows, m.columns);

    //Если умножение невозможно выводим нулевую матрицу
    if (this.columns == m.rows) {
      for (int i = 0; i < this.rows; i++) {
        for (int j = 0; j < m.columns; j++) {
          ResM.matrix[i][j] = .0;
          for (int k = 0; k < this.columns; k++) {
            ResM.matrix[i][j] += this.matrix[i][k] * m.matrix[k][j];
          }
        }
      }
    }
    return ResM;
  }

}

void main() {
  var m1 = Matrix(2, 2, [[1,2],[3,4]]);
  print("вывод на печать Матрицы1");
  m1.PrintMatrix();

  var m2 = Matrix(2, 2, [[5,6],[7,8]]);
  print("вывод на печать Матрицы2");
  m2.PrintMatrix();

  print("Сумма Матрица1+Матрица2");
  m1.SumMatrix(m2).PrintMatrix();

  print("Умножение Матрицы1 на 10");
  m1.MultiNumber(10).PrintMatrix();

  print("Умножение Матрица1*Матрица2");
  m1.MultiMatrix(m2).PrintMatrix();
}