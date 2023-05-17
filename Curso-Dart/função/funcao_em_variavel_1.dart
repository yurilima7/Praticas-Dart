int somaFn(int a, int b) {
  return a + b;
}

void main(List<String> args) {
  // tipo nome = valor;
  int Function(int, int) soma = somaFn;
  print(soma(2, 3));

  int Function(int, int) soma2 = (x, y) {
    return x + y;
  };
  print(soma2(5, 7));
}
