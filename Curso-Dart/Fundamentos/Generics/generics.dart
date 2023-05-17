void main(List<String> args) {
  //<generics>
  List<String> frutas = ['banana', 'maçã', 'laranja'];
  frutas.add("acerola");

  print(frutas);

  Map<String, double> salarios = {
    'gerente': 19345.78,
    'vendedor': 16345.80,
    'estagiário': 600.00,
  };

  salarios['dev'] = 23500.00;

  salarios.update('gerente', ((value) => 30500.00));

  print(salarios);
}
