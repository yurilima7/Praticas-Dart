void main(List<String> args) {
  for (int i = 0; i <= 10; i += 2) {
    print('i = $i');
  }

  print('');

  for (int i = 100; i >= 0; i -= 4) {
    print('i = $i');
  }

  var notas = [8.9, 9.3, 7.8, 6.9, 9.1];
  for (int i = 0; i < notas.length; i++) {
    print("Nota ${i + 1} = ${notas[i]}.");
  }

  print('Fim!');
}
