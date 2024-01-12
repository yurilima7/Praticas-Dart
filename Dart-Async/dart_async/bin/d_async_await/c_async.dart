Future<int> buscarId() async => 80;
Future<String> buscarNome(int id) async => 'Lima ($id)';

Future<String> buscarNomeUsuario() {
  return buscarId().then(
    (id) => buscarNome(id).then(
      (nome) => 'Usuário: $nome',
    ),
  );
}

Future<String> buscarNomeUsuarioAwait() async {
  final id = await buscarId();

  final nome = await buscarNome(id);

  return 'Usuário: $nome';
}

void main(List<String> args) async {
  print('Início');
  // buscarNomeUsuario().then(print);
  final nome = await buscarNomeUsuarioAwait();
  print(nome);
  print('Fim');
}
