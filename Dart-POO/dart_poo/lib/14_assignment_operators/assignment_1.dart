String? nome;
void main() {
  var numero = 1;
  print(numero);
  numero += 2;
  print(numero);

  print(nome);

  nome ??= 'James';

  print(nome);
}
