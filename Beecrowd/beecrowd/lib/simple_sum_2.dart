import 'dart:io';

void main(List<String> args) {
  List<String> start1 = stdin.readLineSync()?.split(' ') ?? [];
  List<String> start2 = stdin.readLineSync()?.split(' ') ?? [];

  double priceTotal1 = double.parse(start1[2]) * int.parse(start1[1]);
  double priceTotal2 = double.parse(start2[2]) * int.parse(start2[1]);
  double total = priceTotal1 + priceTotal2;

  print("VALOR A PAGAR: R\$ ${total.toStringAsFixed(2)}");
}
