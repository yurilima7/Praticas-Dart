void main(List<String> args) {
  juntar(1, 9);
  juntar('bom', ' dia');
  juntar('34', 123);
}

juntar(dynamic a, b) {
  print(a.toString() + b.toString());
}
