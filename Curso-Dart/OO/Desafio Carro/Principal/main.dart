import '../Classes/carro.dart';

void main(List<String> args) {
  Carro c1 = Carro(250, 22);

  while (!c1.limite()) {
    print("A velocidade atual é ${c1.acelerar()} KM/h");
  }

  print("O carro chegou no máximo de ${c1.velocidadeAtual} Km/h\n");

  while (!c1.parado()) {
    print("A velocidade atual é ${c1.frear()} KM/h");
  }

  c1.velocidadeAtual = 3;
  print("O carro parou com ${c1.velocidadeAtual} Km/h");
}
