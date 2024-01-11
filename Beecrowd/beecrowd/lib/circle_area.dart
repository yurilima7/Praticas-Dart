import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  const double pi = 3.14159;

  String? raio = stdin.readLineSync();

  if (raio != null) {
    final double raioConv = double.parse(raio);

    final double a = pi * pow(raioConv, 2);
    print("A = ${a.toStringAsFixed(4)}");
  }
}
