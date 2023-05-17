void main(List<String> args) {
  func1().then((value) {
    func2(value).then((value) => print(value));
  });

  func1()
    .then((value) => func2(value))
    .then((value) => print('Cadeia 2 $value'));
}

Future<String> func1() {
  return Future.delayed(
    Duration(seconds: 1),
    () => 'Parâmentro 1',
  );
}

Future<String> func2(String p) {
  return Future.value('Parâmetro recebido e processado: $p');
}
