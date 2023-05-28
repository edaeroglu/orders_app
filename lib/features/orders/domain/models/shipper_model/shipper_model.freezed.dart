// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipper_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShipperModel _$ShipperModelFromJson(Map<String, dynamic> json) {
  return _ShipperModel.fromJson(json);
}

/// @nodoc
mixin _$ShipperModel {
  int? get shipperid => throw _privateConstructorUsedError;
  String? get shippername => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShipperModelCopyWith<ShipperModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipperModelCopyWith<$Res> {
  factory $ShipperModelCopyWith(
          ShipperModel value, $Res Function(ShipperModel) then) =
      _$ShipperModelCopyWithImpl<$Res, ShipperModel>;
  @useResult
  $Res call({int? shipperid, String? shippername});
}

/// @nodoc
class _$ShipperModelCopyWithImpl<$Res, $Val extends ShipperModel>
    implements $ShipperModelCopyWith<$Res> {
  _$ShipperModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shipperid = freezed,
    Object? shippername = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_ShipperModelCopyWith<$Res>
    implements $ShipperModelCopyWith<$Res> {
  factory _$$_ShipperModelCopyWith(
          _$_ShipperModel value, $Res Function(_$_ShipperModel) then) =
      __$$_ShipperModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? shipperid, String? shippername});
}

/// @nodoc
class __$$_ShipperModelCopyWithImpl<$Res>
    extends _$ShipperModelCopyWithImpl<$Res, _$_ShipperModel>
    implements _$$_ShipperModelCopyWith<$Res> {
  __$$_ShipperModelCopyWithImpl(
      _$_ShipperModel _value, $Res Function(_$_ShipperModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shipperid = freezed,
    Object? shippername = freezed,
  }) {
    return _then(_$_ShipperModel(
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
class _$_ShipperModel implements _ShipperModel {
  _$_ShipperModel({this.shipperid, this.shippername});

  factory _$_ShipperModel.fromJson(Map<String, dynamic> json) =>
      _$$_ShipperModelFromJson(json);

  @override
  final int? shipperid;
  @override
  final String? shippername;

  @override
  String toString() {
    return 'ShipperModel(shipperid: $shipperid, shippername: $shippername)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShipperModel &&
            (identical(other.shipperid, shipperid) ||
                other.shipperid == shipperid) &&
            (identical(other.shippername, shippername) ||
                other.shippername == shippername));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, shipperid, shippername);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShipperModelCopyWith<_$_ShipperModel> get copyWith =>
      __$$_ShipperModelCopyWithImpl<_$_ShipperModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShipperModelToJson(
      this,
    );
  }
}

abstract class _ShipperModel implements ShipperModel {
  factory _ShipperModel({final int? shipperid, final String? shippername}) =
      _$_ShipperModel;

  factory _ShipperModel.fromJson(Map<String, dynamic> json) =
      _$_ShipperModel.fromJson;

  @override
  int? get shipperid;
  @override
  String? get shippername;
  @override
  @JsonKey(ignore: true)
  _$$_ShipperModelCopyWith<_$_ShipperModel> get copyWith =>
      throw _privateConstructorUsedError;
}
