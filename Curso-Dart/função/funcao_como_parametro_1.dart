import 'dart:math';

void executar(Function fnPar, Function fnImpar) {
  var sorteado = Random().nextInt(10);
  print('O valor sorteado = $sorteado');
  sorteado % 2 == 0 ? fnPar() : fnImpar();
}

void main(List<String> args) {
  var minhaFnPar = () => print('VALOR PAR!');
  var minhaFnImpar = () => print('VALOR IMPAR!');

  executar(minhaFnPar, minhaFnImpar);
}
