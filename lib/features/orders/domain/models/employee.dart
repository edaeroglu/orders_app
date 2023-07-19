import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee.freezed.dart';
part 'employee.g.dart';

@Freezed(toStringOverride: false)
class Employee extends Equatable with _$Employee {
  const Employee._();
  const factory Employee({
    String? notes,
    String? lastname,
    String? firstname,
    String? birthdate,
    int? employeeid,
  }) = _Employee;

  factory Employee.fromJson(Map<String, dynamic> json) =>
      _$EmployeeFromJson(json);

  String toString() {
    return firstname.toString();
  }

  int get id => employeeid ?? 0;
}
