Future<void> main() async {
  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);

  stream = stream.skip(5).skipWhile((numero) => numero < 5,);
  // await for
  await for (var i in stream) {
    print(i);
  }
}

int callback(int value) {
  print('Valor = $value');
  return (value + 1) * 2;
}
