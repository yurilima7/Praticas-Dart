import 'dart:io';

void main(List<String> args) {
  String? a = stdin.readLineSync();
  String? b = stdin.readLineSync();

  if (a != null && b != null) {
    double nA = double.parse(a) * 3.5;
    double nB = double.parse(b) * 7.5;
    double media = (nA + nB) / (3.5 + 7.5);
    print("MEDIA = ${media.toStringAsFixed(5)}");
  }
}
