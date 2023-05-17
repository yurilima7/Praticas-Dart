import 'dart:math';

void main(List<String> args) {
  var nota = Random().nextInt(11);

  print("Nota selecionada foi ${nota}");
  if (nota >= 7) {
    print('aprovado!');
  } else if (nota >= 4 && nota < 7) {
    print('Recuperação');
  } else {
    print('Reprovado');
  }
}
