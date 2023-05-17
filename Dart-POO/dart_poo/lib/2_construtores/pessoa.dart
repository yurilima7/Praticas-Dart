class Pessoa {
  String? nome;
  int? idade;
  String? sexo;

  Pessoa({
    required this.nome,
    required this.idade,
    required this.sexo,
  });

  Pessoa.semNome({
    required this.idade,
    required this.sexo,
  });

  Pessoa.vazia();

  // Utilizado quando temos uma regra de negócio para criação da classe
  factory Pessoa.fabrica(String nomeC) {
    var nome = '${nomeC}_Fábrica';
    var pessoa = Pessoa.vazia();
    pessoa.nome = nome;
    return pessoa;
  }
}
