// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) {
  return _OrderModel.fromJson(json);
}

/// @nodoc
mixin _$OrderModel {
  int? get orderid => throw _privateConstructorUsedError;
  String? get orderdate => throw _privateConstructorUsedError;
  int? get shipperid => throw _privateConstructorUsedError;
  Customer? get customer => throw _privateConstructorUsedError;
  Employee? get employee => throw _privateConstructorUsedError;
  int? get employeeid => throw _privateConstructorUsedError;
  int? get customerid => throw _privateConstructorUsedError;
  Shipper? get shipper => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_details')
  List<OrderDetail>? get orderDetails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderModelCopyWith<OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderModelCopyWith<$Res> {
  factory $OrderModelCopyWith(
          OrderModel value, $Res Function(OrderModel) then) =
      _$OrderModelCopyWithImpl<$Res, OrderModel>;
  @useResult
  $Res call(
      {int? orderid,
      String? orderdate,
      int? shipperid,
      Customer? customer,
      Employee? employee,
      int? employeeid,
      int? customerid,
      Shipper? shipper,
      @JsonKey(name: 'order_details') List<OrderDetail>? orderDetails});

  $CustomerCopyWith<$Res>? get customer;
  $EmployeeCopyWith<$Res>? get employee;
  $ShipperCopyWith<$Res>? get shipper;
}

/// @nodoc
class _$OrderModelCopyWithImpl<$Res, $Val extends OrderModel>
    implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderid = freezed,
    Object? orderdate = freezed,
    Object? shipperid = freezed,
    Object? customer = freezed,
    Object? employee = freezed,
    Object? employeeid = freezed,
    Object? customerid = freezed,
    Object? shipper = freezed,
    Object? orderDetails = freezed,
  }) {
    return _then(_value.copyWith(
      orderid: freezed == orderid
          ? _value.orderid
          : orderid // ignore: cast_nullable_to_non_nullable
              as int?,
      orderdate: freezed == orderdate
          ? _value.orderdate
          : orderdate // ignore: cast_nullable_to_non_nullable
              as String?,
      shipperid: freezed == shipperid
          ? _value.shipperid
          : shipperid // ignore: cast_nullable_to_non_nullable
              as int?,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer?,
      employee: freezed == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as Employee?,
      employeeid: freezed == employeeid
          ? _value.employeeid
          : employeeid // ignore: cast_nullable_to_non_nullable
              as int?,
      customerid: freezed == customerid
          ? _value.customerid
          : customerid // ignore: cast_nullable_to_non_nullable
              as int?,
      shipper: freezed == shipper
          ? _value.shipper
          : shipper // ignore: cast_nullable_to_non_nullable
              as Shipper?,
      orderDetails: freezed == orderDetails
          ? _value.orderDetails
          : orderDetails // ignore: cast_nullable_to_non_nullable
              as List<OrderDetail>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomerCopyWith<$Res>? get customer {
    if (_value.customer == null) {
      return null;
    }

    return $CustomerCopyWith<$Res>(_value.customer!, (value) {
      return _then(_value.copyWith(customer: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EmployeeCopyWith<$Res>? get employee {
    if (_value.employee == null) {
      return null;
    }

    return $EmployeeCopyWith<$Res>(_value.employee!, (value) {
      return _then(_value.copyWith(employee: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ShipperCopyWith<$Res>? get shipper {
    if (_value.shipper == null) {
      return null;
    }

    return $ShipperCopyWith<$Res>(_value.shipper!, (value) {
      return _then(_value.copyWith(shipper: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OrderModelCopyWith<$Res>
    implements $OrderModelCopyWith<$Res> {
  factory _$$_OrderModelCopyWith(
          _$_OrderModel value, $Res Function(_$_OrderModel) then) =
      __$$_OrderModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? orderid,
      String? orderdate,
      int? shipperid,
      Customer? customer,
      Employee? employee,
      int? employeeid,
      int? customerid,
      Shipper? shipper,
      @JsonKey(name: 'order_details') List<OrderDetail>? orderDetails});

  @override
  $CustomerCopyWith<$Res>? get customer;
  @override
  $EmployeeCopyWith<$Res>? get employee;
  @override
  $ShipperCopyWith<$Res>? get shipper;
}

/// @nodoc
class __$$_OrderModelCopyWithImpl<$Res>
    extends _$OrderModelCopyWithImpl<$Res, _$_OrderModel>
    implements _$$_OrderModelCopyWith<$Res> {
  __$$_OrderModelCopyWithImpl(
      _$_OrderModel _value, $Res Function(_$_OrderModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderid = freezed,
    Object? orderdate = freezed,
    Object? shipperid = freezed,
    Object? customer = freezed,
    Object? employee = freezed,
    Object? employeeid = freezed,
    Object? customerid = freezed,
    Object? shipper = freezed,
    Object? orderDetails = freezed,
  }) {
    return _then(_$_OrderModel(
      orderid: freezed == orderid
          ? _value.orderid
          : orderid // ignore: cast_nullable_to_non_nullable
              as int?,
      orderdate: freezed == orderdate
          ? _value.orderdate
          : orderdate // ignore: cast_nullable_to_non_nullable
              as String?,
      shipperid: freezed == shipperid
          ? _value.shipperid
          : shipperid // ignore: cast_nullable_to_non_nullable
              as int?,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer?,
      employee: freezed == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as Employee?,
      employeeid: freezed == employeeid
          ? _value.employeeid
          : employeeid // ignore: cast_nullable_to_non_nullable
              as int?,
      customerid: freezed == customerid
          ? _value.customerid
          : customerid // ignore: cast_nullable_to_non_nullable
              as int?,
      shipper: freezed == shipper
          ? _value.shipper
          : shipper // ignore: cast_nullable_to_non_nullable
              as Shipper?,
      orderDetails: freezed == orderDetails
          ? _value._orderDetails
          : orderDetails // ignore: cast_nullable_to_non_nullable
              as List<OrderDetail>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderModel implements _OrderModel {
  _$_OrderModel(
      {this.orderid,
      this.orderdate,
      this.shipperid,
      this.customer,
      this.employee,
      this.employeeid,
      this.customerid,
      this.shipper,
      @JsonKey(name: 'order_details') final List<OrderDetail>? orderDetails})
      : _orderDetails = orderDetails;

  factory _$_OrderModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderModelFromJson(json);

  @override
  final int? orderid;
  @override
  final String? orderdate;
  @override
  final int? shipperid;
  @override
  final Customer? customer;
  @override
  final Employee? employee;
  @override
  final int? employeeid;
  @override
  final int? customerid;
  @override
  final Shipper? shipper;
  final List<OrderDetail>? _orderDetails;
  @override
  @JsonKey(name: 'order_details')
  List<OrderDetail>? get orderDetails {
    final value = _orderDetails;
    if (value == null) return null;
    if (_orderDetails is EqualUnmodifiableListView) return _orderDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OrderModel(orderid: $orderid, orderdate: $orderdate, shipperid: $shipperid, customer: $customer, employee: $employee, employeeid: $employeeid, customerid: $customerid, shipper: $shipper, orderDetails: $orderDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderModel &&
            (identical(other.orderid, orderid) || other.orderid == orderid) &&
            (identical(other.orderdate, orderdate) ||
                other.orderdate == orderdate) &&
            (identical(other.shipperid, shipperid) ||
                other.shipperid == shipperid) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.employee, employee) ||
                other.employee == employee) &&
            (identical(other.employeeid, employeeid) ||
                other.employeeid == employeeid) &&
            (identical(other.customerid, customerid) ||
                other.customerid == customerid) &&
            (identical(other.shipper, shipper) || other.shipper == shipper) &&
            const DeepCollectionEquality()
                .equals(other._orderDetails, _orderDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      orderid,
      orderdate,
      shipperid,
      customer,
      employee,
      employeeid,
      customerid,
      shipper,
      const DeepCollectionEquality().hash(_orderDetails));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderModelCopyWith<_$_OrderModel> get copyWith =>
      __$$_OrderModelCopyWithImpl<_$_OrderModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderModelToJson(
      this,
    );
  }
}

abstract class _OrderModel implements OrderModel {
  factory _OrderModel(
      {final int? orderid,
      final String? orderdate,
      final int? shipperid,
      final Customer? customer,
      final Employee? employee,
      final int? employeeid,
      final int? customerid,
      final Shipper? shipper,
      @JsonKey(name: 'order_details')
          final List<OrderDetail>? orderDetails}) = _$_OrderModel;

  factory _OrderModel.fromJson(Map<String, dynamic> json) =
      _$_OrderModel.fromJson;

  @override
  int? get orderid;
  @override
  String? get orderdate;
  @override
  int? get shipperid;
  @override
  Customer? get customer;
  @override
  Employee? get employee;
  @override
  int? get employeeid;
  @override
  int? get customerid;
  @override
  Shipper? get shipper;
  @override
  @JsonKey(name: 'order_details')
  List<OrderDetail>? get orderDetails;
  @override
  @JsonKey(ignore: true)
  _$$_OrderModelCopyWith<_$_OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}
