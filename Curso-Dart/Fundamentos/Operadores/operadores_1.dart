void main(List<String> args) {
  // Aritméticos

  int a = 7;
  int b = 3;

  int res = a + b;

  print(res);
  print(a - b);
  print(a * b);
  print(a / b);
  print(a % b);
  print(a + b * a - b / a);

  // Lógicos
  bool ehFragil = true;
  bool ehCaro = false;

  print(ehFragil && ehCaro);
  print(ehFragil ^ ehCaro); // OU Exclusivo
}
