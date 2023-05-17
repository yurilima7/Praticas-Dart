import 'dart:convert';

void main() {
  final jsonCEP = '''
  {
    "cep": "01001-000",
    "logradouro": "Praça da Sé",
    "complemento": "lado ímpar",
    "bairro": "Sé",
    "localidade": "São Paulo",
    "uf": "SP",
    "ibge": "3550308",
    "gia": "1004",
    "ddd": "11",
    "siafi": "7107"
  }
  ''';

  final jsonData = json.decode(jsonCEP);

  print(jsonData['logradouro']);

  final jsonMap = {
    "curso": "academia do flutter",
    "total de alunos": 900,
  };

  print(json.encode(jsonMap));
}
