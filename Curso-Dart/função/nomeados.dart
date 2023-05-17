void main(List<String> args) {
  saudarPessoa(nome: 'João', idade: 33);
  saudarPessoa(idade: 47, nome: 'Maria');
}

saudarPessoa({required String nome, required int idade}) {
  print('Olá $nome nem parece que você tem $idade anos.');
}
