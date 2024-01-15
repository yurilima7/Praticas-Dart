import 'dart:async';

Future<void> main(List<String> args) async {
  print('inicio');
  final streamController = StreamController<int>.broadcast(); // controlador
  final inStream = streamController.sink; // entrada
  final outStream = streamController.stream; // saída

  outStream
    .skip(1)
    .where((numero) => numero % 2 == 0)
    .map((numero) => 'O valor par enviado é $numero')
    .listen((strConvertida) => print('Valor da string recebida: $strConvertida'));

  var numeros = List.generate(20, (index) => index);

  for (var numero in numeros) {
    print('enviando número: $numero');
    inStream.add(numero);
    await Future.delayed(Duration(milliseconds: 500));
  }

  print('fim');
  await streamController.close(); // encerra a stream
}
