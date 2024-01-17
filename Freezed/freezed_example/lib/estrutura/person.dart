import 'package:freezed_annotation/freezed_annotation.dart';

part 'person.freezed.dart';

@freezed
class Person with _$Person {
  const factory Person({String? name, int? age}) = _Person;
}

void main(List<String> args) {
  var person = Person(name: 'Lima', age: 23);
  print(person.name);
  print(person.age);
}
