import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_model.freezed.dart';
part 'employee_model.g.dart';

@Freezed(toStringOverride: false)
class EmployeeModel with _$EmployeeModel {
  EmployeeModel._();
  factory EmployeeModel({
    String? firstname,
    String? lastname,
    int? employeeid,
  }) = _EmployeeModel;

  factory EmployeeModel.fromJson(Map<String, dynamic> json) =>
      _$EmployeeModelFromJson(json);

  //freezed toString method
  @override
  String toString() {
    return firstname.toString();
  }

  int get id => employeeid ?? 0;
}
