void main() {
  funcao() {
    return '200';
  }

  print(somaInteiros(10, 10));
  print(funcao());

  chamarFuncao((nome) {
    if (nome.isNotEmpty) {
      print(nome);
    }
  });
}

int somaInteiros(int num1, int num2) => num1 + num2;

void chamarFuncao(FuncaoNome func) {
  var nome = 'Marc';
  func(nome);
}

typedef FuncaoNome = void Function(String nome);
