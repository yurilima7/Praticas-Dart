import 'package:dart_poo/1_classes/camiseta.dart';

void main() {
  Camiseta camisetaNike = Camiseta();
  camisetaNike.tamanho = 'G';
  camisetaNike.cor = 'Preta';
  camisetaNike.marca = 'Nike';

  print(Camiseta.recuperaNome());

  print('''
    Camiseta:
      Tamanho: ${camisetaNike.tamanho}
      Cor: ${camisetaNike.cor}
      Marca: ${camisetaNike.marca}
      Tipo de lavagem: ${camisetaNike.tipoLavagem()}
  ''');

  Camiseta camisetaAdidas = Camiseta();
  camisetaAdidas.tamanho = 'G';
  camisetaAdidas.cor = 'Preta';
  camisetaAdidas.marca = 'Adidas';

  print('''
    Camiseta:
      Tamanho: ${camisetaAdidas.tamanho}
      Cor: ${camisetaAdidas.cor}
      Marca: ${camisetaAdidas.marca}
      Tipo de lavagem: ${camisetaAdidas.tipoLavagem()}
  ''');
}
