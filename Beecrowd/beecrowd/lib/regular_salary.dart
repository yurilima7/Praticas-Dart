import 'dart:io';

void main(List<String> args) {
  String? number = stdin.readLineSync();
  String? hoursWorked = stdin.readLineSync();
  String? hourlyRate = stdin.readLineSync();

  if (number != null && hoursWorked != null && hourlyRate != null) {
    int finalNumber = int.parse(number);
    int finalHoursWorked = int.parse(hoursWorked);
    double finalhourlyRate = double.parse(hourlyRate);

    double salary = finalhourlyRate * finalHoursWorked;
    print("NUMBER = $finalNumber");
    print("SALARY = U\$ ${salary.toStringAsFixed(2)}");
  }
}
