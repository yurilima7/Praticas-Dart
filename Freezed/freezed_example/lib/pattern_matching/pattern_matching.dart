import 'package:freezed_annotation/freezed_annotation.dart';

part 'pattern_matching.freezed.dart';

@freezed
abstract class Union with _$Union {
  factory Union(int value) = UnionData;
  factory Union.loading() = UnionLoading;
  factory Union.error(String message) = UnionError;
}

void main(List<String> args) {
  var union = Union.loading();

  var message = union.when(
    (value) => 'Implementado',
    loading: () => 'Loading implementado',
    error: (String? message) => 'Erro implementado',
  );

  var msgMaybe = union.maybeWhen(
    null,
    error: (String message) => 'Loading implementado',
    orElse: () => 'Padrão implementado',
  );

  var msgMap = union.map(
    (UnionData value) => '${value.runtimeType} implementado',
    loading: (UnionLoading loading) => '${loading.runtimeType} implementado',
    error: (UnionError error) => '${error.runtimeType} implementado',
  );

  print(message);
  print(msgMaybe);
  print(msgMap);
}
