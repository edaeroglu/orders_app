// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipper_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShipperState {
  List<ShipperModel> get shippers => throw _privateConstructorUsedError;
  ShipperModel? get selectedShipper => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShipperStateCopyWith<ShipperState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipperStateCopyWith<$Res> {
  factory $ShipperStateCopyWith(
          ShipperState value, $Res Function(ShipperState) then) =
      _$ShipperStateCopyWithImpl<$Res, ShipperState>;
  @useResult
  $Res call({List<ShipperModel> shippers, ShipperModel? selectedShipper});

  $ShipperModelCopyWith<$Res>? get selectedShipper;
}

/// @nodoc
class _$ShipperStateCopyWithImpl<$Res, $Val extends ShipperState>
    implements $ShipperStateCopyWith<$Res> {
  _$ShipperStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shippers = null,
    Object? selectedShipper = freezed,
  }) {
    return _then(_value.copyWith(
      shippers: null == shippers
          ? _value.shippers
          : shippers // ignore: cast_nullable_to_non_nullable
              as List<ShipperModel>,
      selectedShipper: freezed == selectedShipper
          ? _value.selectedShipper
          : selectedShipper // ignore: cast_nullable_to_non_nullable
              as ShipperModel?,
    ) as $Val);
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
}

/// @nodoc
abstract class _$$_ShipperStateCopyWith<$Res>
    implements $ShipperStateCopyWith<$Res> {
  factory _$$_ShipperStateCopyWith(
          _$_ShipperState value, $Res Function(_$_ShipperState) then) =
      __$$_ShipperStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ShipperModel> shippers, ShipperModel? selectedShipper});

  @override
  $ShipperModelCopyWith<$Res>? get selectedShipper;
}

/// @nodoc
class __$$_ShipperStateCopyWithImpl<$Res>
    extends _$ShipperStateCopyWithImpl<$Res, _$_ShipperState>
    implements _$$_ShipperStateCopyWith<$Res> {
  __$$_ShipperStateCopyWithImpl(
      _$_ShipperState _value, $Res Function(_$_ShipperState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shippers = null,
    Object? selectedShipper = freezed,
  }) {
    return _then(_$_ShipperState(
      shippers: null == shippers
          ? _value._shippers
          : shippers // ignore: cast_nullable_to_non_nullable
              as List<ShipperModel>,
      selectedShipper: freezed == selectedShipper
          ? _value.selectedShipper
          : selectedShipper // ignore: cast_nullable_to_non_nullable
              as ShipperModel?,
    ));
  }
}

/// @nodoc

class _$_ShipperState implements _ShipperState {
  _$_ShipperState(
      {required final List<ShipperModel> shippers,
      required this.selectedShipper})
      : _shippers = shippers;

  final List<ShipperModel> _shippers;
  @override
  List<ShipperModel> get shippers {
    if (_shippers is EqualUnmodifiableListView) return _shippers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shippers);
  }

  @override
  final ShipperModel? selectedShipper;

  @override
  String toString() {
    return 'ShipperState(shippers: $shippers, selectedShipper: $selectedShipper)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShipperState &&
            const DeepCollectionEquality().equals(other._shippers, _shippers) &&
            (identical(other.selectedShipper, selectedShipper) ||
                other.selectedShipper == selectedShipper));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_shippers), selectedShipper);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShipperStateCopyWith<_$_ShipperState> get copyWith =>
      __$$_ShipperStateCopyWithImpl<_$_ShipperState>(this, _$identity);
}

abstract class _ShipperState implements ShipperState {
  factory _ShipperState(
      {required final List<ShipperModel> shippers,
      required final ShipperModel? selectedShipper}) = _$_ShipperState;

  @override
  List<ShipperModel> get shippers;
  @override
  ShipperModel? get selectedShipper;
  @override
  @JsonKey(ignore: true)
  _$$_ShipperStateCopyWith<_$_ShipperState> get copyWith =>
      throw _privateConstructorUsedError;
}
