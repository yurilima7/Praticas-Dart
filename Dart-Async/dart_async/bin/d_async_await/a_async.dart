void main(List<String> args) {
  final nome = semAsync();
  final nome2 = async();

  nome.then(print).catchError(print);
  nome2.then(print).catchError(print);

  asyncVoid().whenComplete(() => print('Completou'));
}

Future<String> semAsync() {
  return Future.value('Sem async');
}

Future<String> async() async {
  return 'Com async';
}

Future<void> asyncVoid() async {
  
}