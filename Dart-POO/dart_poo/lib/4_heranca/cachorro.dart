import 'package:dart_poo/4_heranca/animal.dart';

class Cachorro extends Animal {
  Cachorro({required super.idade, required super.nome});

  @override
  int calcularIdadeHumana() {
    return idade * 7;
  }
}
