void main(List<String> args) {
  double nota = 6.99.roundToDouble(); // arredonda

  print(nota);

  print("Texto".toUpperCase());

  String s1 = "yuri lima";
  String s2 = s1.substring(0, 4); // quebra string
  String s3 = s2.toUpperCase();
  String s4 = s3.padRight(8, "!"); // completa até o indice 15

  var s5 = "yuri lima".substring(0, 4).toUpperCase().padRight(8, "!");

  print(s4);
  print(s5);
}
