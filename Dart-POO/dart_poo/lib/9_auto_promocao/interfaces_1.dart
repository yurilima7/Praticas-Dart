import 'package:dart_poo/8_interfaces/carro.dart';
import 'package:dart_poo/8_interfaces/gol.dart';
import 'package:dart_poo/8_interfaces/uno.dart';

void main() {
  var uno = Uno();
  var gol = Gol();

  Carro golCarro = Gol();

  if (golCarro is Gol) {
    print(golCarro.tipoDeRodas());
  }
  // var tipo = (uno as Gol).tipoDeRodas();
  // print('Tipo de rodas: $tipo');

  printarDadosDoCarro(uno);
  printarDadosDoCarro(gol);

  print(gol.tipoDeRodas());
}

void printarDadosDoCarro(Carro carro) {
  print(''' 
    Carro:
    Tipo: ${carro.runtimeType}
    Portas: ${carro.portas}
    Rodas: ${carro.rodas}
    Motor: ${carro.motor}
    Valocidade Máxima: ${carro.velocidadeMaxima()}
    Tipo de Rodas: ${carro is Gol? carro.tipoDeRodas() : 'Não disponível'}
  ''');
}
