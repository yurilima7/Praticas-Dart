Future<void> main(List<String> args) async {
  print('Inicio');

  try {
    final id = await buscarId();
    final nome = await buscarNome(id);

    print('O nome é $nome');   
  } catch (e) {
    print('Deu erro');
  }

  print('Fim');
}

Future<int> buscarId() async => 8;
Future<String> buscarNome(int id) async {
  throw Exception('Erro');
  // return 'Santoro ($id)';
}
