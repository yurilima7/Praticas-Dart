void main() {
  final idade = 30;

  print(idade);

  final valor = -20;

  if (valor.isNegative) {
    print(valor);
  }

  final valorDouble = 30.4;
  print(valorDouble.round());
  print(valorDouble.roundToDouble());

  final valorString = '30';
  final valorString2 = '30a';

  final convertidoInt = int.parse(valorString);
  final convertidoInt2 = int.tryParse(valorString2);
  print(convertidoInt);
  print(convertidoInt2);

  final preco = 30.27876;
  print(preco.toStringAsFixed(2));
}
