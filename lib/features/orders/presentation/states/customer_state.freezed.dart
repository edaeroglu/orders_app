// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CustomerState {
  List<CustomerModel> get customers => throw _privateConstructorUsedError;
  List<ShipperModel> get shippers => throw _privateConstructorUsedError;
  List<EmployeeModel> get employees => throw _privateConstructorUsedError;
  List<ProductModel> get products => throw _privateConstructorUsedError;
  CustomerModel? get selectedCustomer => throw _privateConstructorUsedError;
  ShipperModel? get selectedShipper => throw _privateConstructorUsedError;
  EmployeeModel? get selectedEmployee => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerStateCopyWith<CustomerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerStateCopyWith<$Res> {
  factory $CustomerStateCopyWith(
          CustomerState value, $Res Function(CustomerState) then) =
      _$CustomerStateCopyWithImpl<$Res, CustomerState>;
  @useResult
  $Res call(
      {List<CustomerModel> customers,
      List<ShipperModel> shippers,
      List<EmployeeModel> employees,
      List<ProductModel> products,
      CustomerModel? selectedCustomer,
      ShipperModel? selectedShipper,
      EmployeeModel? selectedEmployee});

  $CustomerModelCopyWith<$Res>? get selectedCustomer;
  $ShipperModelCopyWith<$Res>? get selectedShipper;
  $EmployeeModelCopyWith<$Res>? get selectedEmployee;
}

/// @nodoc
class _$CustomerStateCopyWithImpl<$Res, $Val extends CustomerState>
    implements $CustomerStateCopyWith<$Res> {
  _$CustomerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customers = null,
    Object? shippers = null,
    Object? employees = null,
    Object? products = null,
    Object? selectedCustomer = freezed,
    Object? selectedShipper = freezed,
    Object? selectedEmployee = freezed,
  }) {
    return _then(_value.copyWith(
      customers: null == customers
          ? _value.customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<CustomerModel>,
      shippers: null == shippers
          ? _value.shippers
          : shippers // ignore: cast_nullable_to_non_nullable
              as List<ShipperModel>,
      employees: null == employees
          ? _value.employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<EmployeeModel>,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      selectedCustomer: freezed == selectedCustomer
          ? _value.selectedCustomer
          : selectedCustomer // ignore: cast_nullable_to_non_nullable
              as CustomerModel?,
      selectedShipper: freezed == selectedShipper
          ? _value.selectedShipper
          : selectedShipper // ignore: cast_nullable_to_non_nullable
              as ShipperModel?,
      selectedEmployee: freezed == selectedEmployee
          ? _value.selectedEmployee
          : selectedEmployee // ignore: cast_nullable_to_non_nullable
              as EmployeeModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomerModelCopyWith<$Res>? get selectedCustomer {
    if (_value.selectedCustomer == null) {
      return null;
    }

    return $CustomerModelCopyWith<$Res>(_value.selectedCustomer!, (value) {
      return _then(_value.copyWith(selectedCustomer: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ShipperModelCopyWith<$Res>? get selectedShipper {
    if (_value.selectedShipper == null) {
      return null;
    }

    return $ShipperModelCopyWith<$Res>(_value.selectedShipper!, (value) {
      return _then(_value.copyWith(selectedShipper: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EmployeeModelCopyWith<$Res>? get selectedEmployee {
    if (_value.selectedEmployee == null) {
      return null;
    }

    return $EmployeeModelCopyWith<$Res>(_value.selectedEmployee!, (value) {
      return _then(_value.copyWith(selectedEmployee: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CustomerStateCopyWith<$Res>
    implements $CustomerStateCopyWith<$Res> {
  factory _$$_CustomerStateCopyWith(
          _$_CustomerState value, $Res Function(_$_CustomerState) then) =
      __$$_CustomerStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CustomerModel> customers,
      List<ShipperModel> shippers,
      List<EmployeeModel> employees,
      List<ProductModel> products,
      CustomerModel? selectedCustomer,
      ShipperModel? selectedShipper,
      EmployeeModel? selectedEmployee});

  @override
  $CustomerModelCopyWith<$Res>? get selectedCustomer;
  @override
  $ShipperModelCopyWith<$Res>? get selectedShipper;
  @override
  $EmployeeModelCopyWith<$Res>? get selectedEmployee;
}

/// @nodoc
class __$$_CustomerStateCopyWithImpl<$Res>
    extends _$CustomerStateCopyWithImpl<$Res, _$_CustomerState>
    implements _$$_CustomerStateCopyWith<$Res> {
  __$$_CustomerStateCopyWithImpl(
      _$_CustomerState _value, $Res Function(_$_CustomerState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customers = null,
    Object? shippers = null,
    Object? employees = null,
    Object? products = null,
    Object? selectedCustomer = freezed,
    Object? selectedShipper = freezed,
    Object? selectedEmployee = freezed,
  }) {
    return _then(_$_CustomerState(
      customers: null == customers
          ? _value._customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<CustomerModel>,
      shippers: null == shippers
          ? _value._shippers
          : shippers // ignore: cast_nullable_to_non_nullable
              as List<ShipperModel>,
      employees: null == employees
          ? _value._employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<EmployeeModel>,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      selectedCustomer: freezed == selectedCustomer
          ? _value.selectedCustomer
          : selectedCustomer // ignore: cast_nullable_to_non_nullable
              as CustomerModel?,
      selectedShipper: freezed == selectedShipper
          ? _value.selectedShipper
          : selectedShipper // ignore: cast_nullable_to_non_nullable
              as ShipperModel?,
      selectedEmployee: freezed == selectedEmployee
          ? _value.selectedEmployee
          : selectedEmployee // ignore: cast_nullable_to_non_nullable
              as EmployeeModel?,
    ));
  }
}

/// @nodoc

class _$_CustomerState implements _CustomerState {
  _$_CustomerState(
      {required final List<CustomerModel> customers,
      required final List<ShipperModel> shippers,
      required final List<EmployeeModel> employees,
      required final List<ProductModel> products,
      required this.selectedCustomer,
      required this.selectedShipper,
      required this.selectedEmployee})
      : _customers = customers,
        _shippers = shippers,
        _employees = employees,
        _products = products;

  final List<CustomerModel> _customers;
  @override
  List<CustomerModel> get customers {
    if (_customers is EqualUnmodifiableListView) return _customers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customers);
  }

  final List<ShipperModel> _shippers;
  @override
  List<ShipperModel> get shippers {
    if (_shippers is EqualUnmodifiableListView) return _shippers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shippers);
  }

  final List<EmployeeModel> _employees;
  @override
  List<EmployeeModel> get employees {
    if (_employees is EqualUnmodifiableListView) return _employees;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_employees);
  }

  final List<ProductModel> _products;
  @override
  List<ProductModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final CustomerModel? selectedCustomer;
  @override
  final ShipperModel? selectedShipper;
  @override
  final EmployeeModel? selectedEmployee;

  @override
  String toString() {
    return 'CustomerState(customers: $customers, shippers: $shippers, employees: $employees, products: $products, selectedCustomer: $selectedCustomer, selectedShipper: $selectedShipper, selectedEmployee: $selectedEmployee)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerState &&
            const DeepCollectionEquality()
                .equals(other._customers, _customers) &&
            const DeepCollectionEquality().equals(other._shippers, _shippers) &&
            const DeepCollectionEquality()
                .equals(other._employees, _employees) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.selectedCustomer, selectedCustomer) ||
                other.selectedCustomer == selectedCustomer) &&
            (identical(other.selectedShipper, selectedShipper) ||
                other.selectedShipper == selectedShipper) &&
            (identical(other.selectedEmployee, selectedEmployee) ||
                other.selectedEmployee == selectedEmployee));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_customers),
      const DeepCollectionEquality().hash(_shippers),
      const DeepCollectionEquality().hash(_employees),
      const DeepCollectionEquality().hash(_products),
      selectedCustomer,
      selectedShipper,
      selectedEmployee);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomerStateCopyWith<_$_CustomerState> get copyWith =>
      __$$_CustomerStateCopyWithImpl<_$_CustomerState>(this, _$identity);
}

abstract class _CustomerState implements CustomerState {
  factory _CustomerState(
      {required final List<CustomerModel> customers,
      required final List<ShipperModel> shippers,
      required final List<EmployeeModel> employees,
      required final List<ProductModel> products,
      required final CustomerModel? selectedCustomer,
      required final ShipperModel? selectedShipper,
      required final EmployeeModel? selectedEmployee}) = _$_CustomerState;

  @override
  List<CustomerModel> get customers;
  @override
  List<ShipperModel> get shippers;
  @override
  List<EmployeeModel> get employees;
  @override
  List<ProductModel> get products;
  @override
  CustomerModel? get selectedCustomer;
  @override
  ShipperModel? get selectedShipper;
  @override
  EmployeeModel? get selectedEmployee;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerStateCopyWith<_$_CustomerState> get copyWith =>
      throw _privateConstructorUsedError;
}