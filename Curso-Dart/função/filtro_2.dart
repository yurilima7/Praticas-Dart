void main(List<String> args) {
  var notas = [8.2, 7.1, 6.3, 4.4, 3.9, 8.8, 9.1, 5.1];

  bool Function(double) notasBoasFn = (double nota) => nota >= 7;

  var notasBoas = notas.where(notasBoasFn);

  print(notas);
  print(notasBoas);
}
