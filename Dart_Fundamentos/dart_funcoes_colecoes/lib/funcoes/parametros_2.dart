void main() {
  // obrigatórios
  print('Soma = ${somaInteiros(10, 10)}');
  // nomeados
  // nomeados são nullables por default
  // podem ser promovidos para non-null com checagem de null
  print('Soma = ${somaDoubles(num1: 10.2, num2: 10.2)}');
  print('Soma = ${somaDoubles(num2: 8.2, num1: 10.5)}');
  print('Soma Obrigatória = ${somaDoublesObg(num2: 8.2, num1: 8.2)}');
  print('Soma Obrigatória2 = ${somaDoublesObg2(num2: 8.2, num1: null)}');
  print('Soma Obrigatória Default = ${somaDoublesDefault(num2: 2)}');

  // opcional
  print(somaOpcional());
  print(somaOpcional(1));
  print(somaOpcional(1, 4));

  mis(0, nome: 'Santana', idade: 39);
}

int somaInteiros(int num1, int num2) {
  return num1 + num2;
}

double somaDoubles({double? num1, double? num2}) {
  if (num1 != null && num2 != null) {
    return num1 + num2;
  }

  return 0.0;
}

double somaDoublesObg({required double num1, required double num2}) {
  return num1 + num2;
}

double somaDoublesObg2({required double? num1, required double num2}) {
  num1 ??= 0;
  return num1 + num2;
}

double somaDoublesDefault({double num1 = 0, double num2 = 0}) {
  return num1 + num2;
}

int somaOpcional([int num1 = 0, int num2 = 0]) {
  return num1 + num2;
}

void mis(int num, {required String nome, required int idade}) {}
