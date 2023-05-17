void main() {
  final numeros = List.generate(10, (index) => index);
  final nomes = ['Santos', 'Tadeu', 'Lara', 'Maria'];

  for (var i = 0; i < numeros.length; i++) {
    print(numeros[i]);
  }

  for (var i = 0; i < nomes.length; i++) {
    print(nomes[i]);
  }

  for (var numero in numeros) {
    print(numero);
  }

  for (var numero in numeros) {
    if (numero == 4) {
      continue;
    }
    print(numero);
  }
}
