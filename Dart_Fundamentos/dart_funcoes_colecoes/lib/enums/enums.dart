void main(List<String> args) {
  var cor = Cores.vermelho;

  if (cor == Cores.vermelho) {
    print(cor.name);
  }

  print(Cores.azul.name);
  var corAzul = Cores.values.byName('azul');

  print(corAzul);

  var coresMap = Cores.values.asMap();
  print(coresMap);

  var coresMapName = Cores.values.asNameMap();
  print(coresMapName['verde']);
}

enum Cores {
  azul, vermelho, laranja, verde, preto,
}