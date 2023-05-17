import 'dart:convert';

class Telefone {
  int ddd;
  String telefone;

  Telefone({
    required this.ddd,
    required this.telefone,
  });

  // passo 1 - serialização
  // toMap(): Pega o objeto (Telefone) e transforma em um Objeto Map<String, dynamic>
  Map<String, dynamic> toMap() {
    return {
      'ddd': ddd,
      'telefone': telefone,
    };
  }

  // passo 2 - serialização
  // toJson: Pega um Map<String, dynamic> e transforma em um pacote dart
  String toJson() => jsonEncode(toMap());

  // passo 2 - deserialização
  // transformando o mapa de chave e valor em um telefone
  factory Telefone.fromMap(Map<String, dynamic> map) {
    return Telefone(
      ddd: map['ddd'] ?? 0,
      telefone: map['telefone'] ?? '',
    );
  }

  // passo 1 - deserialização
  // recebendo String e transformando em um map de chave e valor
  factory Telefone.fromJson(String json) => Telefone.fromMap(jsonDecode(json));

}
