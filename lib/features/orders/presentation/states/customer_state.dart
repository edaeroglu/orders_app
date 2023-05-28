import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/models/customer_model/customer_model.dart';

part 'customer_state.freezed.dart';

@freezed
class CustomerState with _$CustomerState {
  factory CustomerState(
      {required List<CustomerModel> customers,
      required CustomerModel? selectedCustomer}) = _CustomerState;

  factory CustomerState.initial() => CustomerState(
        customers: [],
        selectedCustomer: null,
      );
}
