void main(List<String> args) {
  final totalAlunos = buscarTotaoDeAlunos();
  totalAlunos.then((value) => print('Total de alunos é de $value'));
  print('Resposta: $totalAlunos');
}

Future<int> buscarTotaoDeAlunos() async {
  print('Esse ponto do método é síncrono');
  final buscandoTotalDealunos = await Future.value(887);
  print('Esse ponto do método é depois do await');
  return buscandoTotalDealunos;
}
