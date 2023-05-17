void main() {
  var numeros = List.generate(10, (index) => index);

  numeros.forEach(print);
  numeros.forEach(printNew);

  var lista = [
    [1, 2],
    [3, 4],
  ];

  print(lista[0][1]);

  var listaNew = lista.expand((numeros) => numeros).toList();
  print(listaNew);

  //any = busca
  final listaBusca = ['Rodrigo', 'João', 'José'];

  if (listaBusca.any((nome) => nome == 'João')) {
    print('Tem João');
  } else {
    print('Não tem João');
  }

  // every
  final listaBusca2 = ['Rodrigo', 'João', 'José'];

  if (listaBusca2.every((nome) => nome.contains('o'))) {
    print('Todos os nomes tem a letra o');
  } else {
    print('Nem todos os nomes tem a letra o');
  }

  // sort
  var listOrd = [899, 32, 23, 3726, 908, 323, 12, 732];
  listOrd.sort();
  print(listOrd);

  var listNameOrd = ['Rodrigo', 'João', 'Armando', 'José'];
  listNameOrd.sort();
  print(listNameOrd);

  var listToMod = [...listNameOrd];
  listToMod.removeAt(0);

  print(listNameOrd);
  print(listToMod);
}

void printNew(int valor) {
  print(valor);
}
