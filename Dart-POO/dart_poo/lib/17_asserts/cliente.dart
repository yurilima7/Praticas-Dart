class Cliente {
  String? nome;
  String? razaoSocial;
  String? cpf;
  String? cnpj;

  Cliente({
    String? nome,
    this.razaoSocial,
    this.cpf,
    this.cnpj,
  }) : 
  assert((cpf != null) ? nome != null && razaoSocial == null && cnpj == null : true, 'Você enviou cpf junto com cnpj'),
  assert((cnpj != null) ? razaoSocial == null && nome == null && cpf == null : true, 'Você enviou cnpj junto com cpf');
}
