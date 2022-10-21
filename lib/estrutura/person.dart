import 'package:freezed_annotation/freezed_annotation.dart';

part 'person.freezed.dart';

@freezed
class Person with _$Person {
  factory Person({String? name, int? age}) = _Person;
}

void main() {
  var person = Person(name: 'Julie', age: 4);
  print(person.name!);
  print(person.age.toString());
}
