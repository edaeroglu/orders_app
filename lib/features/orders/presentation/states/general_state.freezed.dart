// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'general_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GeneralState {
  List<CustomerModel> get customers => throw _privateConstructorUsedError;
  List<ShipperModel> get shippers => throw _privateConstructorUsedError;
  List<EmployeeModel> get employees => throw _privateConstructorUsedError;
  List<ProductModel> get products => throw _privateConstructorUsedError;
  CustomerModel? get selectedCustomer => throw _privateConstructorUsedError;
  ShipperModel? get selectedShipper => throw _privateConstructorUsedError;
  EmployeeModel? get selectedEmployee => throw _privateConstructorUsedError;
  OrderModel? get selectedOrder => throw _privateConstructorUsedError;
  ProductModel? get selectedProduct => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GeneralStateCopyWith<GeneralState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneralStateCopyWith<$Res> {
  factory $GeneralStateCopyWith(
          GeneralState value, $Res Function(GeneralState) then) =
      _$GeneralStateCopyWithImpl<$Res, GeneralState>;
  @useResult
  $Res call(
      {List<CustomerModel> customers,
      List<ShipperModel> shippers,
      List<EmployeeModel> employees,
      List<ProductModel> products,
      CustomerModel? selectedCustomer,
      ShipperModel? selectedShipper,
      EmployeeModel? selectedEmployee,
      OrderModel? selectedOrder,
      ProductModel? selectedProduct});

  $CustomerModelCopyWith<$Res>? get selectedCustomer;
  $ShipperModelCopyWith<$Res>? get selectedShipper;
  $EmployeeModelCopyWith<$Res>? get selectedEmployee;
  $OrderModelCopyWith<$Res>? get selectedOrder;
  $ProductModelCopyWith<$Res>? get selectedProduct;
}

/// @nodoc
class _$GeneralStateCopyWithImpl<$Res, $Val extends GeneralState>
    implements $GeneralStateCopyWith<$Res> {
  _$GeneralStateCopyWithImpl(this._value, this._then);

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
    Object? selectedOrder = freezed,
    Object? selectedProduct = freezed,
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
      selectedOrder: freezed == selectedOrder
          ? _value.selectedOrder
          : selectedOrder // ignore: cast_nullable_to_non_nullable
              as OrderModel?,
      selectedProduct: freezed == selectedProduct
          ? _value.selectedProduct
          : selectedProduct // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
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

  @override
  @pragma('vm:prefer-inline')
  $OrderModelCopyWith<$Res>? get selectedOrder {
    if (_value.selectedOrder == null) {
      return null;
    }

    return $OrderModelCopyWith<$Res>(_value.selectedOrder!, (value) {
      return _then(_value.copyWith(selectedOrder: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res>? get selectedProduct {
    if (_value.selectedProduct == null) {
      return null;
    }

    return $ProductModelCopyWith<$Res>(_value.selectedProduct!, (value) {
      return _then(_value.copyWith(selectedProduct: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GeneralStateCopyWith<$Res>
    implements $GeneralStateCopyWith<$Res> {
  factory _$$_GeneralStateCopyWith(
          _$_GeneralState value, $Res Function(_$_GeneralState) then) =
      __$$_GeneralStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CustomerModel> customers,
      List<ShipperModel> shippers,
      List<EmployeeModel> employees,
      List<ProductModel> products,
      CustomerModel? selectedCustomer,
      ShipperModel? selectedShipper,
      EmployeeModel? selectedEmployee,
      OrderModel? selectedOrder,
      ProductModel? selectedProduct});

  @override
  $CustomerModelCopyWith<$Res>? get selectedCustomer;
  @override
  $ShipperModelCopyWith<$Res>? get selectedShipper;
  @override
  $EmployeeModelCopyWith<$Res>? get selectedEmployee;
  @override
  $OrderModelCopyWith<$Res>? get selectedOrder;
  @override
  $ProductModelCopyWith<$Res>? get selectedProduct;
}

/// @nodoc
class __$$_GeneralStateCopyWithImpl<$Res>
    extends _$GeneralStateCopyWithImpl<$Res, _$_GeneralState>
    implements _$$_GeneralStateCopyWith<$Res> {
  __$$_GeneralStateCopyWithImpl(
      _$_GeneralState _value, $Res Function(_$_GeneralState) _then)
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
    Object? selectedOrder = freezed,
    Object? selectedProduct = freezed,
  }) {
    return _then(_$_GeneralState(
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
      selectedOrder: freezed == selectedOrder
          ? _value.selectedOrder
          : selectedOrder // ignore: cast_nullable_to_non_nullable
              as OrderModel?,
      selectedProduct: freezed == selectedProduct
          ? _value.selectedProduct
          : selectedProduct // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
    ));
  }
}

/// @nodoc

class _$_GeneralState implements _GeneralState {
  _$_GeneralState(
      {required final List<CustomerModel> customers,
      required final List<ShipperModel> shippers,
      required final List<EmployeeModel> employees,
      required final List<ProductModel> products,
      required this.selectedCustomer,
      required this.selectedShipper,
      required this.selectedEmployee,
      required this.selectedOrder,
      required this.selectedProduct})
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
  final OrderModel? selectedOrder;
  @override
  final ProductModel? selectedProduct;

  @override
  String toString() {
    return 'GeneralState(customers: $customers, shippers: $shippers, employees: $employees, products: $products, selectedCustomer: $selectedCustomer, selectedShipper: $selectedShipper, selectedEmployee: $selectedEmployee, selectedOrder: $selectedOrder, selectedProduct: $selectedProduct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GeneralState &&
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
                other.selectedEmployee == selectedEmployee) &&
            (identical(other.selectedOrder, selectedOrder) ||
                other.selectedOrder == selectedOrder) &&
            (identical(other.selectedProduct, selectedProduct) ||
                other.selectedProduct == selectedProduct));
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
      selectedEmployee,
      selectedOrder,
      selectedProduct);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GeneralStateCopyWith<_$_GeneralState> get copyWith =>
      __$$_GeneralStateCopyWithImpl<_$_GeneralState>(this, _$identity);
}

abstract class _GeneralState implements GeneralState {
  factory _GeneralState(
      {required final List<CustomerModel> customers,
      required final List<ShipperModel> shippers,
      required final List<EmployeeModel> employees,
      required final List<ProductModel> products,
      required final CustomerModel? selectedCustomer,
      required final ShipperModel? selectedShipper,
      required final EmployeeModel? selectedEmployee,
      required final OrderModel? selectedOrder,
      required final ProductModel? selectedProduct}) = _$_GeneralState;

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
  OrderModel? get selectedOrder;
  @override
  ProductModel? get selectedProduct;
  @override
  @JsonKey(ignore: true)
  _$$_GeneralStateCopyWith<_$_GeneralState> get copyWith =>
      throw _privateConstructorUsedError;
}
