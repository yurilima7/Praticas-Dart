class Carro {
  late final int velocidadeMaxima;
  late int _velocidadeAtual;

  Carro([this.velocidadeMaxima = 200, this._velocidadeAtual = 0]);

  int get velocidadeAtual {
    return this._velocidadeAtual;
  }

  void set velocidadeAtual(int novaVelocidade) {
    bool deltaValido = (_velocidadeAtual - novaVelocidade).abs() <= 5;

    if (deltaValido && novaVelocidade >= 0 && novaVelocidade < velocidadeMaxima) {
      this._velocidadeAtual = novaVelocidade;
    }
  }

  int acelerar() {
    return _velocidadeAtual + 5 < velocidadeMaxima
        ? _velocidadeAtual += 5
        : _velocidadeAtual = velocidadeMaxima;
  }

  int frear() {
    return _velocidadeAtual > 5 ? _velocidadeAtual -= 5 : _velocidadeAtual = 0;
  }

  bool limite() {
    return _velocidadeAtual == velocidadeMaxima ? true : false;
  }

  bool parado() {
    return _velocidadeAtual == 0;
  }
}
