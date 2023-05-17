import 'dart:async';

void main(List<String> args) {
  print('Iniciando Main');
  func1();
  func2();
  print('Finalizando Main');
}

void func1() {
  print('Iniciando Func1');
  Future.delayed(Duration(seconds: 2),() => print('Algo complexo Func1'),);
  print('Finalizando Func1');
}

void func2() {
  print('Iniciando Func2');
  Future.delayed(Duration(seconds: 1),() => print('Algo complexo Func2'),);
  print('Finalizando Func2');
}
