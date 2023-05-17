Object segundoElementoV1(List lista) {
  return lista.length >= 2 ? lista[1] : null;
}

E? segundoElementoV2<E>(List<E> lista) {
  return lista.length >= 2 ? lista[1] : null;
}

void main(List<String> args) {
  var lista = [3, 6, 7, 12, 45, 78, 1];
  var listaStr = ["IFMA", "IFMA", "CAXIAS"];

  print(segundoElementoV1(lista));

  print(segundoElementoV2(listaStr));
}
