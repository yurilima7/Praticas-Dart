void main(List<String> args) {
  List<int> numeros = [1, 2, 3];
  numeros.add(2);

  Map<String, int> mapa = {};
  print(mapa);

  final caixa = Caixa<Bola>();
  caixa.add(Bola());
  Bola? itemBola = caixa.getItem();

  final caixaBoneca = Caixa<Boneca>();
  caixaBoneca.add(Boneca());
  Boneca? itemBoneca = caixaBoneca.getItem();

  print('Boneca ${itemBoneca?.altura()}');
  print('Bola ${itemBola?.altura()}');
}

class Caixa<I extends Item> {
  I? _item;

  void add(I item) {
    _item = item;
  }

  I? getItem() {
    return _item;
  }

  double alturaItem() {
    return _item?.altura() ?? 0;
  }
}

abstract class Item {
  double altura();
}

class Bola extends Item {
  @override
  double altura() {
    return 20.0;
  }
}

class Boneca extends Item {
  @override
  double altura() {
    return 25.0;
  }
}

class Telefone extends Item {
  @override
  double altura() {
    return 90.0;
  }
}
