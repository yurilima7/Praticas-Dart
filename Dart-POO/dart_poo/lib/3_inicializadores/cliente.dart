class Cliente {
  late final String nome;

  Cliente({required String nome});
  Cliente.comNome({required String nomeConst}) {
    nome = nomeConst;
  }
}
