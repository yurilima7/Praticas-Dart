void main(List<String> args) {
  var notas = [8.2, 7.3, 6.8, 5.4, 2.7, 9.3];
  var boasNotasFN = (double nota) => nota >= 7.5;

  var boas = filtrar(notas, boasNotasFN);
  print(boas);

  var nomes = ["Ana", "Bia", "Rebeca", "Yasmim", "Gui", "Paloma"];
  var nomesGrandesFN = (String nome) => nome.length >= 5;

  print(filtrar(nomes, nomesGrandesFN));
}

List<E>? filtrar<E>(List<E> lista, bool Function(E) fn) {
  List<E> listaFiltrada = [];

  for (E elemento in lista) {
    if (fn(elemento)) {
      listaFiltrada.add(elemento);
    }
  }

  return listaFiltrada;
}