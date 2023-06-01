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
  OrderModel? get selectedOrder => throw _privateConstructorUsedError;

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
      OrderModel? selectedOrder});

  $OrderModelCopyWith<$Res>? get selectedOrder;
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
    Object? selectedOrder = freezed,
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
      selectedOrder: freezed == selectedOrder
          ? _value.selectedOrder
          : selectedOrder // ignore: cast_nullable_to_non_nullable
              as OrderModel?,
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
      OrderModel? selectedOrder});

  @override
  $OrderModelCopyWith<$Res>? get selectedOrder;
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
    Object? selectedOrder = freezed,
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
      selectedOrder: freezed == selectedOrder
          ? _value.selectedOrder
          : selectedOrder // ignore: cast_nullable_to_non_nullable
              as OrderModel?,
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
      required this.selectedOrder})
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
  final OrderModel? selectedOrder;

  @override
  String toString() {
    return 'OrderState(orders: $orders, customers: $customers, insertOrderResponse: $insertOrderResponse, deleteOrderResponse: $deleteOrderResponse, selectedOrder: $selectedOrder)';
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
            (identical(other.selectedOrder, selectedOrder) ||
                other.selectedOrder == selectedOrder));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_orders),
      const DeepCollectionEquality().hash(_customers),
      insertOrderResponse,
      deleteOrderResponse,
      selectedOrder);

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
      required final OrderModel? selectedOrder}) = _$_OrderState;

  @override
  List<OrderModel> get orders;
  @override
  List<Customer> get customers;
  @override
  bool? get insertOrderResponse;
  @override
  bool? get deleteOrderResponse;
  @override
  OrderModel? get selectedOrder;
  @override
  @JsonKey(ignore: true)
  _$$_OrderStateCopyWith<_$_OrderState> get copyWith =>
      throw _privateConstructorUsedError;
}