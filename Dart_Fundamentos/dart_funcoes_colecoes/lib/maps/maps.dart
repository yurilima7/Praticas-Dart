void main() {
  final paciente = <String, String>{
    'nome': 'Yuri Lima',
    'curso': 'Academia do Flutter',
  };

  Map<String, String>? pacienteNullSafety;
  Map<String?, String> pacienteNullSafety2 = {null: 'Santos'};
  var pacienteNullSafety3 = <String, String?>{
    'nome': null,
  };

  print(paciente);
  print(pacienteNullSafety);
  print(pacienteNullSafety2);
  print(pacienteNullSafety3);

  var produtos = <String, String>{};
  produtos.putIfAbsent('nome', () => 'Almofada');
  produtos.update(
    'nome2',
    (value) => 'Refrigerante',
    ifAbsent: () => 'Refrigerante',
  );

  print(produtos);
  print(produtos['nome']);
  print('forEach');
  produtos.forEach((key, value) {
    print('Chave: $key, $value');
  });

  print('\nfor in');
  for (var entry in produtos.entries) {
    print('Chave: ${entry.key}, ${entry.value}');
  }

  for (var key in produtos.keys) {
    print('Chave: $key');
  }

  for (var value in produtos.values) {
    print('Chave: $value');
  }

  var prodUpper = produtos.map((key, value) {
    return MapEntry(key, value.toUpperCase());
  });

  print(prodUpper);

  final mapa = <String, Object>{
    'nome': 'Yuri Lima',
    'cursos': [
      {
        'nome': 'Academia do Flutter',
      },
      {
        'nome': 'Ciência da Computação',
      }
    ],
  };

  print(mapa['cursos']);
  mapa.forEach((key, value) {
    print('Chave: $key, $value');
  });
}
