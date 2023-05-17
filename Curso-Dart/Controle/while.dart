import 'dart:io';

void main(List<String> args) {
  var digitado = '';

  while (digitado != 'sair') {
    stdout.write('Digite algo ao sair: ');
    digitado = stdin.readLineSync().toString();
  }

  do {
    stdout.write('Digite algo ao sair: ');
    digitado = stdin.readLineSync().toString();
  } while (digitado != 'sair');

  print('Fim!');
}
