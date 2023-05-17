import 'package:dart_poo/16_ordenacao/cliente.dart';

void main() {
  var c1 = Cliente(nome: 'Lima', telefone: '382784734');
  var c2 = Cliente(nome: 'Tainara', telefone: '31212342');
  var c3 = Cliente(nome: 'Armando', telefone: '31212342');
  var c4 = Cliente(nome: 'Maura', telefone: '31212342');

  var lista = [c1, c2, c3, c4];
  print(lista);
  lista.sort();
  print(lista);
}
