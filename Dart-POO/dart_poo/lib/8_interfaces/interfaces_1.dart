import 'package:dart_poo/8_interfaces/carro.dart';
import 'package:dart_poo/8_interfaces/gol.dart';
import 'package:dart_poo/8_interfaces/uno.dart';

void main() {
  var uno = Uno();
  var gol = Gol();

  Carro golCarro = Gol();

  printarDadosDoCarro(uno);
  printarDadosDoCarro(gol);

  print(gol.tipoDeRodas());

  print(golCarro.velocidadeMaxima());
}

void printarDadosDoCarro(Carro carro) {
  print(''' 
    Carro:
    Tipo: ${carro.runtimeType}
    Portas: ${carro.portas}
    Rodas: ${carro.rodas}
    Motor: ${carro.motor}
    Valocidade Máxima: ${carro.velocidadeMaxima()}
  ''');
}
