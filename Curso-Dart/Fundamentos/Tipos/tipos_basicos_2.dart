/*
  - List
  - Set
  - Map
*/

void main(List<String> args) {
  // list
  var aprovados = ['Ana', 'Carlos', 'Daniel', 'Rafael'];

  aprovados.add('Daniel');
  print(aprovados.elementAt(2));
  print(aprovados[0]);
  print(aprovados.length);

  // map
  var telefones = {
    'João': '+55 (11) 98934-0374',
    'Maria': '+55 (21) 98654-0374',
    'Pedro': '+55 (23) 94534-0784',
  };

  print(telefones);
  print(telefones['João']);
  print(telefones.length);
  print(telefones.values);
  print(telefones.keys);
  print(telefones.entries);

  // set
  var times = {'São Paulo', 'Vasco', 'Fortaleza', 'Sport'};
  times.add('Atlético/MG');
  print(times.length);
  print(times.contains('Vasco'));
  print(times.first);
  print(times.last);
}
