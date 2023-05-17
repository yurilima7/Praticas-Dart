void main() {
  final numeros = [1, 2, 3, 4];

  print(numeros);
  numeros.add(1);
  print(numeros);

  final nomes = ['Santos', 'Tadeu', 'Lara', 'Maria'];
  print(nomes);
  nomes.add('Luana');
  print(nomes);
  print(nomes[3]);

  nomes.insert(0, 'José');
  print(nomes);

  nomes.addAll(['Rodrigo', 'Sara', 'Mara']);
  nomes.remove('Tadeu');
  print(nomes);

  nomes.removeWhere((nome) => nome == 'Sara');
  print(nomes);
  print(nomes.first);
  print(nomes.last);

  var primeiroNome = nomes.firstWhere((nome) => nome == 'Lara');
  print(primeiroNome);

  final numerosGerados = List.generate(10, (index) => index + 1);
  print(numerosGerados);

  final stringsGerados = List.generate(10, (index) => 'Indice ${index + 1}');
  print(stringsGerados);

  final repeticoes = List.filled(10, 'S');
  print(repeticoes);

  final numerosGeradosCalc = List.generate(100, (index) => index + 1);
  var soma = numerosGeradosCalc.fold<int>(
      0, (previousValue, numero) => previousValue += numero);
  print(soma);

  // Spread Operator (...)
  var listaNumerosSpread = [1, 2, 3];
  var listaNumerosSpreadB = [...listaNumerosSpread, 4, 5, 6];
  print(listaNumerosSpreadB);

  // Collection if
  var promocaoAtiva = true;
  var produtos = [
    'Cerveja',
    'Refrigerante',
    if (promocaoAtiva) 'Suco de Laranja',
  ];

  print(produtos);

}
