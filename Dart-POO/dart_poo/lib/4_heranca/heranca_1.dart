import 'package:dart_poo/4_heranca/cachorro.dart';

void main() {
  var cachorro = Cachorro(idade: 10, nome: 'Costelinha');
  cachorro.tamanho = 'Pequeno';

  print('Nome: ${cachorro.nome}');
  print('Idade: ${cachorro.recuperarIdade()}');
  print('Idade humana: ${cachorro.calcularIdadeHumana()}');
  print('Tamanho: ${cachorro.tamanho}');
}
