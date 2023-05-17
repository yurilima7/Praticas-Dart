abstract class CarroAbstrata {
  void velocidadeMaxima() {}
}

abstract class Carro {
  abstract int portas;
  abstract int rodas;
  abstract String motor;

  int velocidadeMaxima();
}
