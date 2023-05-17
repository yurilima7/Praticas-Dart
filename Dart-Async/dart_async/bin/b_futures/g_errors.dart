void main(List<String> args) {
  func1()
      .then((value) => func2())
      .then((value) => func3(), onError: (error) {
        print('Erro em func2');
        return func3();
      })
      .then((value) => print('Cadeia $value'))
      .catchError((onError) => print('Erro em alguma das chamadas'));
}

Future<String> func1() {
  print('Func 1');
  return Future.value('Fazendo algo func1');
}

Future<String> func2() {
  print('Func 2');
  return Future.error('Fazendo algo func2');
}

Future<String> func3() {
  print('Func 3');
  return Future.value('Fazendo algo func3');
}
