void main(List<String> args) {
  Future(() {});
  Future.value('');
  Future.error('');
}

Future<String> func1() {
  return Future.value('Qualquer valor');
}
