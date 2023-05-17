void main() {
  //! Detalhe sobre a String
  //! A String é composta por 3 campos (Nome|Idade|Sexo)
  final pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Feminino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  //! Baseado na lista acima.
  //! 1 - Remova os pacientes duplicados e apresente a nova lista
  var novaLista = removeDuplicados(pessoas);
  novaLista.forEach(print);
  //! 2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas
  quantidade(novaLista);
  //! 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome
  var listaFiltrada = maioresDeIdade(novaLista);
  print('\nMaiores de 18 anos');
  for (var pessoa in listaFiltrada) {
    print(pessoa[0]);
  }
  //! 4 - Encontre a pessoa mais velha e apresente o nome dela.
  pessoaMaisVivida(listaFiltrada);
}

List<List<String>> removeDuplicados(List<String> pessoas) {
  var lista = quebra(pessoas);

  var filtro = <String>{};
  return lista.where((p) => filtro.add(p[0].toString())).toList();
}

List<List<String>> quebra(List<String> lista) {
  List<List<String>> dados = [];
  for (var l in lista) {
    var dado = l.split('|');
    dados.add(dado);
  }

  return dados;
}

void quantidade(List<List<String>> pessoas) {
  int qtdM = 0, qtdF = 0;
  var nomesF = [], nomesM = [];

  for (var p in pessoas) {
    if (p[2] == 'Masculino') {
      qtdM++;
      nomesM.add(p[0]);
    } else {
      qtdF++;
      nomesF.add(p[0]);
    }
  }

  print('\nPessoas do Sexo Masculino = $qtdM');
  for (var nome in nomesM) {
    print(nome);
  }

  print('\nPessoas do Sexo Feminino = $qtdF');
  nomesF.forEach(print);
}

List<List<String>> maioresDeIdade(List<List<String>> pessoas) {
  List<List<String>> maiores = [];

  for (var p in pessoas) {
    int idade = int.tryParse(p[1]) ?? 0;
    if (idade > 18) {
      maiores.add(p);
    }
  }

  return maiores;
}

void pessoaMaisVivida(List<List<String>> pessoas) {
  int idadeFinal = 0;
  var nome = '';

  for (var p in pessoas) {
    int idade = int.tryParse(p[1]) ?? 0;
    if (idade > idadeFinal) {
      idadeFinal = int.tryParse(p[1])!;
      nome = p[0];
    }
  }

  print('\nA pessoa mais vivida é: $nome');
}
