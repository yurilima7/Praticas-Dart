void main(List<String> args) {
  var a = 2;
  var b = 4.56;
  var texto = "O  valor da soma é: ";

  print(texto + (a + b).toString());

  var t1 = "Olá";
  var t2 = " Dart!";

  print(t1 + t2);

  print(a.runtimeType);

  print(b is int);
}
