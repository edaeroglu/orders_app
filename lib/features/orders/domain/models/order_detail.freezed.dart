// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderDetail _$OrderDetailFromJson(Map<String, dynamic> json) {
  return _OrderDetail.fromJson(json);
}

/// @nodoc
mixin _$OrderDetail {
  int? get orderid => throw _privateConstructorUsedError;
  int? get productid => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  int? get orderdetailid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderDetailCopyWith<OrderDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailCopyWith<$Res> {
  factory $OrderDetailCopyWith(
          OrderDetail value, $Res Function(OrderDetail) then) =
      _$OrderDetailCopyWithImpl<$Res, OrderDetail>;
  @useResult
  $Res call({int? orderid, int? productid, int? quantity, int? orderdetailid});
}

/// @nodoc
class _$OrderDetailCopyWithImpl<$Res, $Val extends OrderDetail>
    implements $OrderDetailCopyWith<$Res> {
  _$OrderDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderid = freezed,
    Object? productid = freezed,
    Object? quantity = freezed,
    Object? orderdetailid = freezed,
  }) {
    return _then(_value.copyWith(
      orderid: freezed == orderid
          ? _value.orderid
          : orderid // ignore: cast_nullable_to_non_nullable
              as int?,
      productid: freezed == productid
          ? _value.productid
          : productid // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      orderdetailid: freezed == orderdetailid
          ? _value.orderdetailid
          : orderdetailid // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderDetailCopyWith<$Res>
    implements $OrderDetailCopyWith<$Res> {
  factory _$$_OrderDetailCopyWith(
          _$_OrderDetail value, $Res Function(_$_OrderDetail) then) =
      __$$_OrderDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? orderid, int? productid, int? quantity, int? orderdetailid});
}

/// @nodoc
class __$$_OrderDetailCopyWithImpl<$Res>
    extends _$OrderDetailCopyWithImpl<$Res, _$_OrderDetail>
    implements _$$_OrderDetailCopyWith<$Res> {
  __$$_OrderDetailCopyWithImpl(
      _$_OrderDetail _value, $Res Function(_$_OrderDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderid = freezed,
    Object? productid = freezed,
    Object? quantity = freezed,
    Object? orderdetailid = freezed,
  }) {
    return _then(_$_OrderDetail(
      orderid: freezed == orderid
          ? _value.orderid
          : orderid // ignore: cast_nullable_to_non_nullable
              as int?,
      productid: freezed == productid
          ? _value.productid
          : productid // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      orderdetailid: freezed == orderdetailid
          ? _value.orderdetailid
          : orderdetailid // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderDetail implements _OrderDetail {
  _$_OrderDetail(
      {this.orderid, this.productid, this.quantity, this.orderdetailid});

  factory _$_OrderDetail.fromJson(Map<String, dynamic> json) =>
      _$$_OrderDetailFromJson(json);

  @override
  final int? orderid;
  @override
  final int? productid;
  @override
  final int? quantity;
  @override
  final int? orderdetailid;

  @override
  String toString() {
    return 'OrderDetail(orderid: $orderid, productid: $productid, quantity: $quantity, orderdetailid: $orderdetailid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderDetail &&
            (identical(other.orderid, orderid) || other.orderid == orderid) &&
            (identical(other.productid, productid) ||
                other.productid == productid) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.orderdetailid, orderdetailid) ||
                other.orderdetailid == orderdetailid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, orderid, productid, quantity, orderdetailid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderDetailCopyWith<_$_OrderDetail> get copyWith =>
      __$$_OrderDetailCopyWithImpl<_$_OrderDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderDetailToJson(
      this,
    );
  }
}

abstract class _OrderDetail implements OrderDetail {
  factory _OrderDetail(
      {final int? orderid,
      final int? productid,
      final int? quantity,
      final int? orderdetailid}) = _$_OrderDetail;

  factory _OrderDetail.fromJson(Map<String, dynamic> json) =
      _$_OrderDetail.fromJson;

  @override
  int? get orderid;
  @override
  int? get productid;
  @override
  int? get quantity;
  @override
  int? get orderdetailid;
  @override
  @JsonKey(ignore: true)
  _$$_OrderDetailCopyWith<_$_OrderDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
