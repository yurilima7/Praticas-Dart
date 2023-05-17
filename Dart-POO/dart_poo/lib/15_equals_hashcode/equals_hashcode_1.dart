import 'package:dart_poo/15_equals_hashcode/pessoa.dart';

void main() {
  var p1 = Pessoa(nome: 'Yuri', email: 'Teste@teste.com');
  var p2 = Pessoa(nome: 'Yuri', email: 'Teste@teste.com');

  print(p1.hashCode);
  print(p2.hashCode);

  print(p1);

  if (p1 == p2) {
    print('Igual');
  } else {
    print('Diferente');
  }
}
