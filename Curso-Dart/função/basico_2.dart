import 'dart:math';

void main(List<String> args) {
  int resultado = somar(2, 3);

  resultado *= 2;

  print(resultado);

  print('aleatório = ${somaDoisQualquer()}');
}

int somar(int a, int b) {
  return a + b;
}

int somaDoisQualquer() {
  int n1 = Random().nextInt(11);
  int n2 = Random().nextInt(11);

  return n1 + n2;
}
