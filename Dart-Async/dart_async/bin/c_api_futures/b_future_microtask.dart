void main(List<String> args) {
  print('init main');
  Future<String>(() => 'Normal',).then(print);
  Future<String>.microtask(() => 'Microtask',).then(print);

  print('fim');
}
