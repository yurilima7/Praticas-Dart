void main(List<String> args) {
  print('Entrando');

  Future<int>(() {
    // função assincrona que vai fazer o orçamento da manutenção do carro
    return 10 ~/ 2;
  }).then((value) {
    print('O orçamento para manutenção foi de $value');
  }).catchError((error) {
    print('Impossível salvar o carro!');
  }).whenComplete(() => print('Finalizando...'));

  Future<int>(() {
    return 10 ~/ 2;
  }).then((value) {
    print('O valor é de $value');
  });

  Future<int>(() {
    return 10 ~/ 0;
  }).then((value) {
    print('O valor é de $value');
  }, onError: (onError) {
    print('Deu erro: $onError');
  }).catchError((onError) {
    print('Catch error');
  });

  Future<int>(() {
    return 10 ~/ 0;
  }).then((value) {
    print('O valor é de $value');
  }).catchError((onError) {
    print('Erro');
  }, test: (error) => error is UnsupportedError,);

  print('Saindo...');
}
