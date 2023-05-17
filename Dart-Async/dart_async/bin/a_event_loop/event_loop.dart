import 'dart:async';

void main(List<String> args) {
  print('Inicio main');
  Timer.run(() {
    scheduleMicrotask(() {
      print('Nova MicroTast 1');
    });
    print('Event 1');
  });
  Timer.run(() {
    print('Event 2');
  });
  Timer.run(() {
    print('Event 3');
  });

  scheduleMicrotask(() {
    print('MicroTast 1');
  });
  scheduleMicrotask(() {
    print('MicroTast 2');
  });
  print('Fim main');
}
