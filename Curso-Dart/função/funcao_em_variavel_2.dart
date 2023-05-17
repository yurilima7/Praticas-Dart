void main(List<String> args) {
  var adicao = (int a, int b) => a + b;
  var subtracao = (int a, int b) => a - b;
  var multiplicacao = (int a, int b) => a * b;
  var divisao = (int a, int b) => a / b;

  print(adicao(4, 19));
  print(subtracao(20, 12));
  print(multiplicacao(20, 12));
  print(divisao(20, 12));
}
