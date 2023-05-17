Future<void> main(List<String> args) async {
  print('Inicio');
  final nomes = ['Rodrigo', 'Luana', 'Guilherme', 'Valentina'];

  // nomes.forEach((nome) async {
  //   final saudacaoNome = await saudacao(nome);
  //   print('Saudação $saudacaoNome');
  // });
  for (var nome in nomes) {
    await tratarSaudacao(nome);
  }
  print('Fim');
}

Future<void> tratarSaudacao(String nome) async {
  final saudacaoNome = await saudacao(nome);
  print(saudacaoNome);
}

Future<String> saudacao(String nome) async {
  print('Inicio saudação $nome');
  return Future.delayed(Duration(seconds: 1), () {
    print('Fim saudação nome: $nome');
    return 'Olá $nome';
  });
}
