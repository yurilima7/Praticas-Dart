import 'dart:io';

void main(List<String> args) {
  // Área da circunferência = PI * raio * raio

  //String? texto = stdin.readLineSync(); // entrada de dados
  const PI = 3.1415;

  stdout.write("Informe o raio: "); // não faz quebra de linha
  final entrada = stdin.readLineSync();
  final raio = double.parse(entrada!); // constante pois não será mais alterada

  final area = PI * raio * raio;
  print("O valor da área é: " + area.toString());
}
