import 'dart:math';

void main(List<String> args) {
  int n1 = aleatorio(100);
  print(n1);

  int n2 = aleatorio();
  print(n2);
}

int aleatorio([int max = 11]) { // 11 padrão no caso opcional
  return Random().nextInt(max);
}
