import 'package:dart_poo/19_extensions/pessoa.dart';

extension PessoaExtension on Pessoa {
  String nomeComSaudacao() {
    return 'Olá $nome, seja bem vindo!';
  }
}