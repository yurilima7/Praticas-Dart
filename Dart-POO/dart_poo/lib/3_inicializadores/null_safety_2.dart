import 'package:dart_poo/3_inicializadores/cliente.dart';

void main() {
  var cliente = Cliente.comNome(nomeConst: 'Amanda');
  var cliente2 = Cliente(nome: 'Ana');
  cliente2.nome = 'Ana';

  print(cliente.nome);
  print(cliente2.nome);
}
