void main(List<String> args) {
  var alunos = [
    {'nome': 'Alfredo', 'nota': 9.9},
    {'nome': 'Wilson', 'nota': 9.3},
    {'nome': 'Mariana', 'nota': 8.7},
    {'nome': 'Guilherme', 'nota': 8.1},
    {'nome': 'Ana', 'nota': 7.6},
    {'nome': 'Sara', 'nota': 6.8},
  ];

  var notasFinais = alunos.map((aluno) => aluno['nota'])
    .map((nota) => (nota as double))
    .where((nota) => nota >= 8);

  var total = notasFinais.reduce((t, acumulador) => t + acumulador);

  print("*O valor da média é: ${total / notasFinais.length}.");
}
