import 'produto.dart';

class VendaItem {
  late Produto produto;

  late int quantidade;
  late double _preco;

  VendaItem({required this.produto, this.quantidade = 1});

  double get preco {
    _preco = produto.precoDescontado;
    return _preco;
  }

  void set preco(double novoPreco) {
    if (novoPreco > 0) {
      _preco = novoPreco;
    }
  }
}
