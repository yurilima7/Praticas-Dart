String? nome;
String nomeComp = 'Superior';
void main() {
  nome = 'Dois Carros na rua';
  String nome2;
  String? nome3;
  nome2 = 'Local';
  nome3 = 'Inicializado';

  print(nome?.length);
  print(nome2.length);
  print(nome3.length);
  print(nomeComp.length);
}
