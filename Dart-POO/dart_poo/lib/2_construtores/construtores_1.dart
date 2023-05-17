import 'package:dart_poo/2_construtores/pessoa.dart';

void main() {
  var pessoa = Pessoa(nome: 'Arthur', idade: 24, sexo: 'Masculino');

  print(pessoa.nome);

  // cosntrutor nomeado
  var pessoaNomeado = Pessoa.semNome(idade: 10, sexo: 'Feminino');
  print(pessoaNomeado.idade);

  var pessoaFactory = Pessoa.fabrica('Santos');
  print(pessoaFactory.nome);
}
