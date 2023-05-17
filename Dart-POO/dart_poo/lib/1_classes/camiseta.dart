class Camiseta {
  String? tamanho;
  String? _cor;
  String? marca;

  // atributo de classe
  static const String _nome = 'Camiseta';

  // método de classe
  static String recuperaNome() => _nome;

  String? get cor => _cor;
  set cor(String? cor) {
    if (cor == 'Verde') {
      throw Exception('Não pode ser verde');
    }
  }

  String tipoLavagem() {
    if (marca == 'Nike') {
      return 'Não pode lavar na máquina';
    } else {
      return 'Pode lavar na máquina';
    }
  }
}
