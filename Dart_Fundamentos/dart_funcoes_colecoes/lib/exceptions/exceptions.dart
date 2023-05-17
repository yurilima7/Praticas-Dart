void main(List<String> args) {
  var idade = '22 anos';
  String? nome = 'a';

  try {
    int.parse(idade);
    nome.toLowerCase();
  } on FormatException catch (e, s) {
    print('Erro ao converter idade');
    print(e);
    print(s);
  } on TypeError {
    print('Erro ao ');
  } catch (e, s) {
    print('Erro ao executar programa');
    print(e);
    print(s);
  } finally {
    print('finally');
  }
}
