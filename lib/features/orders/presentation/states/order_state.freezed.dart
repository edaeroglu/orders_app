// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrderState {
  List<OrderModel> get orders => throw _privateConstructorUsedError;
  List<Customer> get customers => throw _privateConstructorUsedError;
  bool? get insertOrderResponse => throw _privateConstructorUsedError;
  bool? get deleteOrderResponse => throw _privateConstructorUsedError;
  bool? get updateOrderResponse => throw _privateConstructorUsedError;
  OrderModel? get selectedOrder => throw _privateConstructorUsedError;
  CustomerModel? get selectedCustomer => throw _privateConstructorUsedError;
  ShipperModel? get selectedShipper => throw _privateConstructorUsedError;
  EmployeeModel? get selectedEmployee => throw _privateConstructorUsedError;
  ProductModel? get selectedProduct => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderStateCopyWith<OrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStateCopyWith<$Res> {
  factory $OrderStateCopyWith(
          OrderState value, $Res Function(OrderState) then) =
      _$OrderStateCopyWithImpl<$Res, OrderState>;
  @useResult
  $Res call(
      {List<OrderModel> orders,
      List<Customer> customers,
      bool? insertOrderResponse,
      bool? deleteOrderResponse,
      bool? updateOrderResponse,
      OrderModel? selectedOrder,
      CustomerModel? selectedCustomer,
      ShipperModel? selectedShipper,
      EmployeeModel? selectedEmployee,
      ProductModel? selectedProduct});

  $OrderModelCopyWith<$Res>? get selectedOrder;
  $CustomerModelCopyWith<$Res>? get selectedCustomer;
  $ShipperModelCopyWith<$Res>? get selectedShipper;
  $EmployeeModelCopyWith<$Res>? get selectedEmployee;
  $ProductModelCopyWith<$Res>? get selectedProduct;
}

/// @nodoc
class _$OrderStateCopyWithImpl<$Res, $Val extends OrderState>
    implements $OrderStateCopyWith<$Res> {
  _$OrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
    Object? customers = null,
    Object? insertOrderResponse = freezed,
    Object? deleteOrderResponse = freezed,
    Object? updateOrderResponse = freezed,
    Object? selectedOrder = freezed,
    Object? selectedCustomer = freezed,
    Object? selectedShipper = freezed,
    Object? selectedEmployee = freezed,
    Object? selectedProduct = freezed,
  }) {
    return _then(_value.copyWith(
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
      customers: null == customers
          ? _value.customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<Customer>,
      insertOrderResponse: freezed == insertOrderResponse
          ? _value.insertOrderResponse
          : insertOrderResponse // ignore: cast_nullable_to_non_nullable
              as bool?,
      deleteOrderResponse: freezed == deleteOrderResponse
          ? _value.deleteOrderResponse
          : deleteOrderResponse // ignore: cast_nullable_to_non_nullable
              as bool?,
      updateOrderResponse: freezed == updateOrderResponse
          ? _value.updateOrderResponse
          : updateOrderResponse // ignore: cast_nullable_to_non_nullable
              as bool?,
      selectedOrder: freezed == selectedOrder
          ? _value.selectedOrder
          : selectedOrder // ignore: cast_nullable_to_non_nullable
              as OrderModel?,
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
      selectedProduct: freezed == selectedProduct
          ? _value.selectedProduct
          : selectedProduct // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
    ) as $Val);
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
abstract class _$$_OrderStateCopyWith<$Res>
    implements $OrderStateCopyWith<$Res> {
  factory _$$_OrderStateCopyWith(
          _$_OrderState value, $Res Function(_$_OrderState) then) =
      __$$_OrderStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<OrderModel> orders,
      List<Customer> customers,
      bool? insertOrderResponse,
      bool? deleteOrderResponse,
      bool? updateOrderResponse,
      OrderModel? selectedOrder,
      CustomerModel? selectedCustomer,
      ShipperModel? selectedShipper,
      EmployeeModel? selectedEmployee,
      ProductModel? selectedProduct});

  @override
  $OrderModelCopyWith<$Res>? get selectedOrder;
  @override
  $CustomerModelCopyWith<$Res>? get selectedCustomer;
  @override
  $ShipperModelCopyWith<$Res>? get selectedShipper;
  @override
  $EmployeeModelCopyWith<$Res>? get selectedEmployee;
  @override
  $ProductModelCopyWith<$Res>? get selectedProduct;
}

/// @nodoc
class __$$_OrderStateCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$_OrderState>
    implements _$$_OrderStateCopyWith<$Res> {
  __$$_OrderStateCopyWithImpl(
      _$_OrderState _value, $Res Function(_$_OrderState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
    Object? customers = null,
    Object? insertOrderResponse = freezed,
    Object? deleteOrderResponse = freezed,
    Object? updateOrderResponse = freezed,
    Object? selectedOrder = freezed,
    Object? selectedCustomer = freezed,
    Object? selectedShipper = freezed,
    Object? selectedEmployee = freezed,
    Object? selectedProduct = freezed,
  }) {
    return _then(_$_OrderState(
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
      customers: null == customers
          ? _value._customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<Customer>,
      insertOrderResponse: freezed == insertOrderResponse
          ? _value.insertOrderResponse
          : insertOrderResponse // ignore: cast_nullable_to_non_nullable
              as bool?,
      deleteOrderResponse: freezed == deleteOrderResponse
          ? _value.deleteOrderResponse
          : deleteOrderResponse // ignore: cast_nullable_to_non_nullable
              as bool?,
      updateOrderResponse: freezed == updateOrderResponse
          ? _value.updateOrderResponse
          : updateOrderResponse // ignore: cast_nullable_to_non_nullable
              as bool?,
      selectedOrder: freezed == selectedOrder
          ? _value.selectedOrder
          : selectedOrder // ignore: cast_nullable_to_non_nullable
              as OrderModel?,
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
      selectedProduct: freezed == selectedProduct
          ? _value.selectedProduct
          : selectedProduct // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
    ));
  }
}

/// @nodoc

class _$_OrderState implements _OrderState {
  _$_OrderState(
      {required final List<OrderModel> orders,
      required final List<Customer> customers,
      required this.insertOrderResponse,
      required this.deleteOrderResponse,
      required this.updateOrderResponse,
      required this.selectedOrder,
      required this.selectedCustomer,
      required this.selectedShipper,
      required this.selectedEmployee,
      required this.selectedProduct})
      : _orders = orders,
        _customers = customers;

  final List<OrderModel> _orders;
  @override
  List<OrderModel> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  final List<Customer> _customers;
  @override
  List<Customer> get customers {
    if (_customers is EqualUnmodifiableListView) return _customers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customers);
  }

  @override
  final bool? insertOrderResponse;
  @override
  final bool? deleteOrderResponse;
  @override
  final bool? updateOrderResponse;
  @override
  final OrderModel? selectedOrder;
  @override
  final CustomerModel? selectedCustomer;
  @override
  final ShipperModel? selectedShipper;
  @override
  final EmployeeModel? selectedEmployee;
  @override
  final ProductModel? selectedProduct;

  @override
  String toString() {
    return 'OrderState(orders: $orders, customers: $customers, insertOrderResponse: $insertOrderResponse, deleteOrderResponse: $deleteOrderResponse, updateOrderResponse: $updateOrderResponse, selectedOrder: $selectedOrder, selectedCustomer: $selectedCustomer, selectedShipper: $selectedShipper, selectedEmployee: $selectedEmployee, selectedProduct: $selectedProduct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderState &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            const DeepCollectionEquality()
                .equals(other._customers, _customers) &&
            (identical(other.insertOrderResponse, insertOrderResponse) ||
                other.insertOrderResponse == insertOrderResponse) &&
            (identical(other.deleteOrderResponse, deleteOrderResponse) ||
                other.deleteOrderResponse == deleteOrderResponse) &&
            (identical(other.updateOrderResponse, updateOrderResponse) ||
                other.updateOrderResponse == updateOrderResponse) &&
            (identical(other.selectedOrder, selectedOrder) ||
                other.selectedOrder == selectedOrder) &&
            (identical(other.selectedCustomer, selectedCustomer) ||
                other.selectedCustomer == selectedCustomer) &&
            (identical(other.selectedShipper, selectedShipper) ||
                other.selectedShipper == selectedShipper) &&
            (identical(other.selectedEmployee, selectedEmployee) ||
                other.selectedEmployee == selectedEmployee) &&
            (identical(other.selectedProduct, selectedProduct) ||
                other.selectedProduct == selectedProduct));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_orders),
      const DeepCollectionEquality().hash(_customers),
      insertOrderResponse,
      deleteOrderResponse,
      updateOrderResponse,
      selectedOrder,
      selectedCustomer,
      selectedShipper,
      selectedEmployee,
      selectedProduct);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderStateCopyWith<_$_OrderState> get copyWith =>
      __$$_OrderStateCopyWithImpl<_$_OrderState>(this, _$identity);
}

abstract class _OrderState implements OrderState {
  factory _OrderState(
      {required final List<OrderModel> orders,
      required final List<Customer> customers,
      required final bool? insertOrderResponse,
      required final bool? deleteOrderResponse,
      required final bool? updateOrderResponse,
      required final OrderModel? selectedOrder,
      required final CustomerModel? selectedCustomer,
      required final ShipperModel? selectedShipper,
      required final EmployeeModel? selectedEmployee,
      required final ProductModel? selectedProduct}) = _$_OrderState;

  @override
  List<OrderModel> get orders;
  @override
  List<Customer> get customers;
  @override
  bool? get insertOrderResponse;
  @override
  bool? get deleteOrderResponse;
  @override
  bool? get updateOrderResponse;
  @override
  OrderModel? get selectedOrder;
  @override
  CustomerModel? get selectedCustomer;
  @override
  ShipperModel? get selectedShipper;
  @override
  EmployeeModel? get selectedEmployee;
  @override
  ProductModel? get selectedProduct;
  @override
  @JsonKey(ignore: true)
  _$$_OrderStateCopyWith<_$_OrderState> get copyWith =>
      throw _privateConstructorUsedError;
}
