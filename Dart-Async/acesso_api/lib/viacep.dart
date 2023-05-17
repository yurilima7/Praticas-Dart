import 'dart:convert';

import 'package:http/http.dart';

Future<void> main() async {
  final result =
      await get(Uri.parse('https://viacep.com.br/ws/01001000/json/'));

  if (result.statusCode != 200) {
    print('Erro ao buscar cep');
    return;
  }
  final resultData = json.decode(result.body);

  print(result.body);
  if (resultData.containsKey('Erro')) {
    print('Cep não encontrado');
  } else {
    print(resultData['logradouro']);
  }
}
