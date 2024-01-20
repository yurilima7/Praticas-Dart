import 'dart:io';

void main(List<String> args) {
  String? name = stdin.readLineSync();
  String? fixedSalary = stdin.readLineSync();
  String? totalSales = stdin.readLineSync();

  if (name != null && fixedSalary != null && totalSales != null) {
    double finalfixedSalary = double.parse(fixedSalary);
    double finaltotalSales = double.parse(totalSales);

    double salary = finalfixedSalary + (finaltotalSales * 0.15);
    print("TOTAL = R\$ ${salary.toStringAsFixed(2)}");
  }
}
