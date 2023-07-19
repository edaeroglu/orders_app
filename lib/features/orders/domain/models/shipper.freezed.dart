// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Shipper _$ShipperFromJson(Map<String, dynamic> json) {
  return _Shipper.fromJson(json);
}

/// @nodoc
mixin _$Shipper {
  String? get phone => throw _privateConstructorUsedError;
  int? get shipperid => throw _privateConstructorUsedError;
  String? get shippername => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShipperCopyWith<Shipper> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipperCopyWith<$Res> {
  factory $ShipperCopyWith(Shipper value, $Res Function(Shipper) then) =
      _$ShipperCopyWithImpl<$Res, Shipper>;
  @useResult
  $Res call({String? phone, int? shipperid, String? shippername});
}

/// @nodoc
class _$ShipperCopyWithImpl<$Res, $Val extends Shipper>
    implements $ShipperCopyWith<$Res> {
  _$ShipperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = freezed,
    Object? shipperid = freezed,
    Object? shippername = freezed,
  }) {
    return _then(_value.copyWith(
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      shipperid: freezed == shipperid
          ? _value.shipperid
          : shipperid // ignore: cast_nullable_to_non_nullable
              as int?,
      shippername: freezed == shippername
          ? _value.shippername
          : shippername // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShipperCopyWith<$Res> implements $ShipperCopyWith<$Res> {
  factory _$$_ShipperCopyWith(
          _$_Shipper value, $Res Function(_$_Shipper) then) =
      __$$_ShipperCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? phone, int? shipperid, String? shippername});
}

/// @nodoc
class __$$_ShipperCopyWithImpl<$Res>
    extends _$ShipperCopyWithImpl<$Res, _$_Shipper>
    implements _$$_ShipperCopyWith<$Res> {
  __$$_ShipperCopyWithImpl(_$_Shipper _value, $Res Function(_$_Shipper) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = freezed,
    Object? shipperid = freezed,
    Object? shippername = freezed,
  }) {
    return _then(_$_Shipper(
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      shipperid: freezed == shipperid
          ? _value.shipperid
          : shipperid // ignore: cast_nullable_to_non_nullable
              as int?,
      shippername: freezed == shippername
          ? _value.shippername
          : shippername // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Shipper extends _Shipper {
  const _$_Shipper({this.phone, this.shipperid, this.shippername}) : super._();

  factory _$_Shipper.fromJson(Map<String, dynamic> json) =>
      _$$_ShipperFromJson(json);

  @override
  final String? phone;
  @override
  final int? shipperid;
  @override
  final String? shippername;

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShipperCopyWith<_$_Shipper> get copyWith =>
      __$$_ShipperCopyWithImpl<_$_Shipper>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShipperToJson(
      this,
    );
  }
}

abstract class _Shipper extends Shipper {
  const factory _Shipper(
      {final String? phone,
      final int? shipperid,
      final String? shippername}) = _$_Shipper;
  const _Shipper._() : super._();

  factory _Shipper.fromJson(Map<String, dynamic> json) = _$_Shipper.fromJson;

  @override
  String? get phone;
  @override
  int? get shipperid;
  @override
  String? get shippername;
  @override
  @JsonKey(ignore: true)
  _$$_ShipperCopyWith<_$_Shipper> get copyWith =>
      throw _privateConstructorUsedError;
}
