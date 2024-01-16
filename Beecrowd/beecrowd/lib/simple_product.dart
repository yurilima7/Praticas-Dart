import 'dart:io';

void main(List<String> args) {
  String? a = stdin.readLineSync();
  String? b = stdin.readLineSync();

  if (a != null && b != null) {
    int prod = int.parse(a) * int.parse(b);
    print("PROD = $prod");
  }
}