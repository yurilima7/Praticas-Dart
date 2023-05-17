void main(List<String> args) {
  var pessoa = Pessoa();
  pessoa.nome = 'Yuri Lima';
  print(pessoa.nome);
}

class Pessoa {
  String? _nome;

  String? get nome => _nome;

  set nome(String? nome) {
    if (nome != null) {
      _nome = nome;
    }
  }
}
