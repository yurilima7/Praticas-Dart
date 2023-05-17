import 'dart:async';

void main(List<String> args) {
  print(DateTime.now().toIso8601String());

  // aguardando.timeout(Duration(seconds: 1), onTimeout: () {
  //   print('Terminou com timeout');
  // }).then((value) {
  //   print('Terminou a execução');
  // }).catchError((onError) {
  //   print('Erro $onError');
  // });
  try {
    final aguardando = inserindoLentamente().timeout(Duration(seconds: 1));
  } on TimeoutException catch (e) {
    print('Finalizou com timeout $e');
  }
}

Future<void> inserindoLentamente() {
  return Future.delayed(Duration(seconds: 3), () {
    print('Terminou o insert');
    print(DateTime.now().toIso8601String());
  });
}
