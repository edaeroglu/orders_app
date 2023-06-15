import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/models/employee.dart';

part 'employee_state.freezed.dart';

@freezed
class EmployeeState with _$EmployeeState {
  factory EmployeeState(
      {required List<Employee> employees,
      required Employee? selectedEmployee}) = _EmployeeState;

  factory EmployeeState.initial() =>
      EmployeeState(employees: [], selectedEmployee: null);
}
