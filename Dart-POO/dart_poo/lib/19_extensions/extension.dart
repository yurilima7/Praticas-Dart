import 'package:dart_poo/19_extensions/pessoa.dart';
import 'package:dart_poo/19_extensions/pessoa_extension.dart';
import 'package:dart_poo/19_extensions/saudacao_extension.dart';

void main(List<String> args) {
  String nome = 'Yuri';

  print(nome.saudacao());

  var p = Pessoa(nome: 'José', idade: 22);
  print(p.nomeComSaudacao());
}
