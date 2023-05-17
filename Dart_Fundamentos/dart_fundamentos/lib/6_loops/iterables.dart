void main() {
  final numeros = List.generate(10, (index) => index);

  for (var i = 0; i < numeros.length; i++) {
    if (i == 5) {
      continue;
    }
    print(numeros[i]);
  }

  numeros.where((numero) => numero != 5).forEach((numero) {
    print(numero);
  });

  final numerosAte5 = numeros
      .takeWhile((numero) => numero < 7)
      .where((numero) => numero != 5)
      .toList();
  print(numerosAte5);

  final numerosRemoverAte5 = numeros.skipWhile((numero) => numero < 6).toList();
  print(numerosRemoverAte5);

  var numeroStr = numeros.map((numero) => 'Número é $numero').toList();
  print(numeroStr);

  print(numeros.reversed.toList());
}
