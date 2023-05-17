void main() {
  var nome = 'Lima';
  print(nome);
  nome = 'Lima Silva';
  print(nome);

  // ambas não se alteram depois de inicializadas
  final nomeFinal = nome; // definidas em tempo de execução (Runtime)
  const nomeConst = 'Marcos Santos'; // definidas em tempo de compilação

  print(nomeFinal);
  print(nomeConst);
}
