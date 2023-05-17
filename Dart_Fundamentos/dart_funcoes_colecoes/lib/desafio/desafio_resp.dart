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
  print('1 - Remova os pacientes duplicados e apresente a nova lista');
  final pessoasSemDuplicados =
      pessoas.toSet().map((e) => e.split('|')).toList();
  for (var p in pessoasSemDuplicados) {
    print(p[0]);
  }

  //! 2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas
  final mapSexo = <String, List<String>>{};
  for (var p in pessoasSemDuplicados) {
    final sexo = p[2].toLowerCase();
    final listaM = mapSexo['M'] ?? <String>[];
    final listaF = mapSexo['F'] ?? <String>[];

    if (sexo == 'masculino') {
      listaM.add(p[0]);
    } else {
      listaF.add(p[0]);
    }

    mapSexo['M'] = listaM;
    mapSexo['F'] = listaF;
  }
  print(
      '\n2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas');

  final m = mapSexo['M'] ?? <String>[];
  final f = mapSexo['F'] ?? <String>[];
  print('Masculinos ${m.length}');
  m.forEach(print);
  print('\nFemininos ${f.length}');
  f.forEach(print);

  //! 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome
  final listaMaiores = pessoasSemDuplicados.where((p) {
    final idade = int.tryParse(p[1]) ?? 0;
    return idade > 18;
  }).toList();

  print(
      '\n3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome');
  for (var p in listaMaiores) {
    print(p[0]);
  }
  
  //! 4 - Encontre a pessoa mais velha e apresente o nome dela.
  print('\n4 - Encontre a pessoa mais velha e apresente o nome dela.');
  final listaOrdenada = [...pessoasSemDuplicados];
  listaOrdenada.sort((p1, p2) {
    final idadeP1 = int.tryParse(p1[1]) ?? 0;
    final idadeP2 = int.tryParse(p2[1]) ?? 0;

    return idadeP2.compareTo(idadeP1);
  });

  final pessoaMaisVelha = listaOrdenada.first;
  print('A pessoa mais velha é ${pessoaMaisVelha[0]}');
}
