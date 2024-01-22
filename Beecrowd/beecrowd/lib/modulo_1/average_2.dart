import 'dart:io';

void main(List<String> args) {
  String? a = stdin.readLineSync();
  String? b = stdin.readLineSync();
  String? c = stdin.readLineSync();

  if (a != null && b != null && c != null) {
    double nA = double.parse(a) * 2;
    double nB = double.parse(b) * 3;
    double nC = double.parse(c) * 5;

    double media = (nA + nB + nC) / (2 + 3 + 5);
    print("MEDIA = ${media.toStringAsFixed(1)}");
  }
}
