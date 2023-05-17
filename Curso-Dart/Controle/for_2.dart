// for in
void main(List<String> args) {
  var notas = [8.9, 9.3, 7.8, 6.9, 9.1];

  for (var nota in notas) {
    print("O valor da nota é ${nota}.");
  }

  var coordenadas = [
    [1, 3],
    [9, 1],
    [19, 23],
    [2, 14],
  ];

  print("");

  for (var coordenada in coordenadas) {
    for (var ponto in coordenada) {
      print("Valor do ponto é $ponto");
    }
  }
}
