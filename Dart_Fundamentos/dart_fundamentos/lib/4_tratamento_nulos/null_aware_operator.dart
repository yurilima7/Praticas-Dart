String? nomeSuperior;

void main() {
  var sobrenome = ' Lima';
  var nomeCompleto = (nomeSuperior ?? 'Yuri') + sobrenome;
  print(nomeCompleto);
}
