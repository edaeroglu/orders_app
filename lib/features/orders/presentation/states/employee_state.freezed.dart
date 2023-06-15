// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EmployeeState {
  List<Employee> get employees => throw _privateConstructorUsedError;
  Employee? get selectedEmployee => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmployeeStateCopyWith<EmployeeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeStateCopyWith<$Res> {
  factory $EmployeeStateCopyWith(
          EmployeeState value, $Res Function(EmployeeState) then) =
      _$EmployeeStateCopyWithImpl<$Res, EmployeeState>;
  @useResult
  $Res call({List<Employee> employees, Employee? selectedEmployee});

  $EmployeeCopyWith<$Res>? get selectedEmployee;
}

/// @nodoc
class _$EmployeeStateCopyWithImpl<$Res, $Val extends EmployeeState>
    implements $EmployeeStateCopyWith<$Res> {
  _$EmployeeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employees = null,
    Object? selectedEmployee = freezed,
  }) {
    return _then(_value.copyWith(
      employees: null == employees
          ? _value.employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<Employee>,
      selectedEmployee: freezed == selectedEmployee
          ? _value.selectedEmployee
          : selectedEmployee // ignore: cast_nullable_to_non_nullable
              as Employee?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EmployeeCopyWith<$Res>? get selectedEmployee {
    if (_value.selectedEmployee == null) {
      return null;
    }

    return $EmployeeCopyWith<$Res>(_value.selectedEmployee!, (value) {
      return _then(_value.copyWith(selectedEmployee: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_EmployeeStateCopyWith<$Res>
    implements $EmployeeStateCopyWith<$Res> {
  factory _$$_EmployeeStateCopyWith(
          _$_EmployeeState value, $Res Function(_$_EmployeeState) then) =
      __$$_EmployeeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Employee> employees, Employee? selectedEmployee});

  @override
  $EmployeeCopyWith<$Res>? get selectedEmployee;
}

/// @nodoc
class __$$_EmployeeStateCopyWithImpl<$Res>
    extends _$EmployeeStateCopyWithImpl<$Res, _$_EmployeeState>
    implements _$$_EmployeeStateCopyWith<$Res> {
  __$$_EmployeeStateCopyWithImpl(
      _$_EmployeeState _value, $Res Function(_$_EmployeeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employees = null,
    Object? selectedEmployee = freezed,
  }) {
    return _then(_$_EmployeeState(
      employees: null == employees
          ? _value._employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<Employee>,
      selectedEmployee: freezed == selectedEmployee
          ? _value.selectedEmployee
          : selectedEmployee // ignore: cast_nullable_to_non_nullable
              as Employee?,
    ));
  }
}

/// @nodoc

class _$_EmployeeState implements _EmployeeState {
  _$_EmployeeState(
      {required final List<Employee> employees, required this.selectedEmployee})
      : _employees = employees;

  final List<Employee> _employees;
  @override
  List<Employee> get employees {
    if (_employees is EqualUnmodifiableListView) return _employees;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_employees);
  }

  @override
  final Employee? selectedEmployee;

  @override
  String toString() {
    return 'EmployeeState(employees: $employees, selectedEmployee: $selectedEmployee)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmployeeState &&
            const DeepCollectionEquality()
                .equals(other._employees, _employees) &&
            (identical(other.selectedEmployee, selectedEmployee) ||
                other.selectedEmployee == selectedEmployee));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_employees), selectedEmployee);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmployeeStateCopyWith<_$_EmployeeState> get copyWith =>
      __$$_EmployeeStateCopyWithImpl<_$_EmployeeState>(this, _$identity);
}

abstract class _EmployeeState implements EmployeeState {
  factory _EmployeeState(
      {required final List<Employee> employees,
      required final Employee? selectedEmployee}) = _$_EmployeeState;

  @override
  List<Employee> get employees;
  @override
  Employee? get selectedEmployee;
  @override
  @JsonKey(ignore: true)
  _$$_EmployeeStateCopyWith<_$_EmployeeState> get copyWith =>
      throw _privateConstructorUsedError;
}
