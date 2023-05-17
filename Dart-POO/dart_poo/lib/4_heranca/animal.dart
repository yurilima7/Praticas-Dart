abstract class Animal {
  final String nome;
  String? tamanho;
  final int idade;
  int? baseIdadeHumana;

  Animal({required this.idade, required this.nome});

  int recuperarIdade() {
    return idade;
  }

  int calcularIdadeHumana();
}
