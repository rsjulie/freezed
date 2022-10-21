import 'package:freezed_annotation/freezed_annotation.dart';

part 'pattern_matching.freezed.dart';

@freezed
class Union with _$Union {
  factory Union(int value) = UnionData;
  factory Union.loading() = UnionLoading;
  factory Union.error([String? message]) = UnionError;
}

void main() {
  var union = Union.error('5rgdgtertg');

  var msg = union.when<String>(
    (value) => 'UNION DATA IMPLEMENTADO',
    loading: () => 'Loading implementado',
    error: (message) => 'Erro implementado',
  );

  var msgMaybe = union.maybeWhen(null,
      loading: () => 'Loading impolementado!', orElse: () => 'Padrao implem.');

  var msgMap = union.map(
    (value) => '${value.runtimeType} implementado - ${value.value}',
    loading: (loading) => '${loading.runtimeType} implementado',
    error: (error) => '${error.runtimeType} implementado = ${error.message}',
  );
  print(msgMap);
}
