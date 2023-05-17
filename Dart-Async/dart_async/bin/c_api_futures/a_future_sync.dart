void main(List<String> args) {
  print('init main');
  Future.sync(() {
    print('Func executada');
    return 'Resultado';
  }).then(print);

  print('fim');
}
