void main() {
  var lista = ['Lima'];
  print(lista);

  String nome = 'Yuri';

  funcao2(nome);
  print(nome);

  var newList = add(lista);
  print(lista);
  print(newList);
}

void funcao(List<String> nomes) {
  nomes.add('Santos');
}

void funcao2(String nome) {
  nome += 'Silva';
}

List<String> add(List<String> nomes) {
  var novoNomes = [...nomes];
  novoNomes.add('Santos');
  return novoNomes;
}