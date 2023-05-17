import 'dart:convert';

class Products {
  final int id;
  final String name;

  Products({
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nome': name,
    };
  }

  String toJson() => jsonEncode(toMap());

  factory Products.fromMap(Map<String, dynamic> map) {
    return Products(
      id: map['id'] ?? 0,
      name: map['name'] ?? '',
    );
  }

  factory Products.fromJson(String json) => Products.fromMap(jsonDecode(json));
}
