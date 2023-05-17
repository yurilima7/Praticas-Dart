void main(List<String> args) {
  final totalAlunos = buscarTotaoDeAlunos();
  totalAlunos.then((value) => print('Total de alunos é de $value'));
  print('Resposta: $totalAlunos');
}

Future<int> buscarTotaoDeAlunos() async {
  print('Esse ponto do metódo é sincrono');
  final buscandoTotalDealunos = await Future.value(887);
  print('Esse ponto do metódo é depois do await');
  return buscandoTotalDealunos;
}
