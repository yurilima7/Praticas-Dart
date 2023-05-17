void main(List<String> args) {
  final nomes = ['Alvin', 'Sandra', 'Marcos', 'Lara'];

  final pessoas = nomes.map((nome) => Pessoa(nome)).toList();

  final pessoasNew = nomes.map<Pessoa>(Pessoa.nome).toList();
  final pessoasNew2 = nomes.map<Pessoa>(Pessoa.new).toList();

  print('Antigo');
  for (var pessoa in pessoas) {
    print('Olá ${pessoa.nome}');
  }

  print('\nNovo para nomeado');
  for (var pessoa in pessoasNew) {
    print('Olá ${pessoa.nome}');
  }

  print('\nNovo para padrão');
  for (var pessoa in pessoasNew2) {
    print('Olá ${pessoa.nome}');
  }

  funcQualquer(Pessoa.new);
}

void funcQualquer(void Function(String) funcao) {
  funcao('Santos');
}

class Pessoa {
  String nome;

  Pessoa(this.nome);

  Pessoa.nome(this.nome);
}
