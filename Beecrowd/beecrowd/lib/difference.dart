import 'dart:io';

void main(List<String> args) {
  String? a = stdin.readLineSync();
  String? b = stdin.readLineSync();
  String? c = stdin.readLineSync();
  String? d = stdin.readLineSync();

  if (a != null && b != null && c != null && d != null) {
    int difference = int.parse(a) * int.parse(b) - int.parse(c) * int.parse(d);
    print("DIFERENCA = $difference");
  }
}