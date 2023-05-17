import 'dart:async';

Future<void> main(List<String> args) async {
  // busca(1).then((value) => print('Mensagem')).catchError((onError) => print('Erro $onError'));
  try {
    final msg = await busca(2);
    print(msg);
  } on Exception catch (e, s) {
    print('Erro: $e');
    print(s);
  }
}

Future<String> busca(int n) {
  final completer = Completer<String>();

  Timer(Duration(seconds: 2), () {
    if (n == 0) {
      completer.complete('Número enviado com sucesso');
    } else {
      completer.completeError('Número enviado com erro', StackTrace.current);
    }
  });

  return completer.future;
}
