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
  CustomerModel? get selectedCustomer => throw _privateConstructorUsedError;

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
  $Res call({List<CustomerModel> customers, CustomerModel? selectedCustomer});

  $CustomerModelCopyWith<$Res>? get selectedCustomer;
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
    Object? selectedCustomer = freezed,
  }) {
    return _then(_value.copyWith(
      customers: null == customers
          ? _value.customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<CustomerModel>,
      selectedCustomer: freezed == selectedCustomer
          ? _value.selectedCustomer
          : selectedCustomer // ignore: cast_nullable_to_non_nullable
              as CustomerModel?,
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
}

/// @nodoc
abstract class _$$_CustomerStateCopyWith<$Res>
    implements $CustomerStateCopyWith<$Res> {
  factory _$$_CustomerStateCopyWith(
          _$_CustomerState value, $Res Function(_$_CustomerState) then) =
      __$$_CustomerStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CustomerModel> customers, CustomerModel? selectedCustomer});

  @override
  $CustomerModelCopyWith<$Res>? get selectedCustomer;
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
    Object? selectedCustomer = freezed,
  }) {
    return _then(_$_CustomerState(
      customers: null == customers
          ? _value._customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<CustomerModel>,
      selectedCustomer: freezed == selectedCustomer
          ? _value.selectedCustomer
          : selectedCustomer // ignore: cast_nullable_to_non_nullable
              as CustomerModel?,
    ));
  }
}

/// @nodoc

class _$_CustomerState implements _CustomerState {
  _$_CustomerState(
      {required final List<CustomerModel> customers,
      required this.selectedCustomer})
      : _customers = customers;

  final List<CustomerModel> _customers;
  @override
  List<CustomerModel> get customers {
    if (_customers is EqualUnmodifiableListView) return _customers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customers);
  }

  @override
  final CustomerModel? selectedCustomer;

  @override
  String toString() {
    return 'CustomerState(customers: $customers, selectedCustomer: $selectedCustomer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerState &&
            const DeepCollectionEquality()
                .equals(other._customers, _customers) &&
            (identical(other.selectedCustomer, selectedCustomer) ||
                other.selectedCustomer == selectedCustomer));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_customers), selectedCustomer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomerStateCopyWith<_$_CustomerState> get copyWith =>
      __$$_CustomerStateCopyWithImpl<_$_CustomerState>(this, _$identity);
}

abstract class _CustomerState implements CustomerState {
  factory _CustomerState(
      {required final List<CustomerModel> customers,
      required final CustomerModel? selectedCustomer}) = _$_CustomerState;

  @override
  List<CustomerModel> get customers;
  @override
  CustomerModel? get selectedCustomer;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerStateCopyWith<_$_CustomerState> get copyWith =>
      throw _privateConstructorUsedError;
}
