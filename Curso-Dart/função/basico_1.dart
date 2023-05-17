import 'dart:math';

void main(List<String> args) {
  somaComPrint(2, 3);

  somaComPrint(4, 5);

  somaDoisQualquer();
}

void somaComPrint(int a, int b) {
  print(a + b);
}

void somaDoisQualquer() {
  int n1 = Random().nextInt(11);
  int n2 = Random().nextInt(11);
 
  print('$n1 + $n2 = ${n1 + n2}');
}
