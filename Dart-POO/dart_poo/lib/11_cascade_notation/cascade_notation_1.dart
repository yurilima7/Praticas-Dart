void main() {
  var pessoa = Pessoa()
    ..nome = 'Yuri'
    ..email = 'Teste@teste.com';
  // pessoa.nome = 'Yuri';
  // pessoa.email = 'Teste@teste.com';

  print(pessoa.nome);
  print(pessoa.email);
}

class Pessoa {
  String? nome;
  String? email;
}
