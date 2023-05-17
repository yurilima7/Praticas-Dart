class Pessoa {
  String? nome;
  // Composição - quando um atributo de associação é obrigatório
  Endereco endereco = Endereco();
  CPF cpf = CPF();

  // Agregação - quando um atributo de associação não é obrigatório
  Telefone? telefone;
}

class Endereco {
  
}

class Telefone {
  
}

class CPF {
  
}