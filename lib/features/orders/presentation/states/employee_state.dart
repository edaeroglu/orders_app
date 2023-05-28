import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/models/employee_model/employee_model.dart';

part 'employee_state.freezed.dart';

@freezed
class EmployeeState with _$EmployeeState {
  factory EmployeeState(
      {required List<EmployeeModel> employees,
      required EmployeeModel? selectedEmployee}) = _EmployeeState;

  factory EmployeeState.initial() =>
      EmployeeState(employees: [], selectedEmployee: null);
}
