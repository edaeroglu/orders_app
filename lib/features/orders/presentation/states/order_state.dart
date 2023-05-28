import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/models/customer.dart';
import '../../domain/models/order_model.dart';

part 'order_state.freezed.dart';

@freezed
class OrderState with _$OrderState {
  factory OrderState({
    required List<OrderModel> orders,
    required bool? insertOrderResponse,
    required List<Customer> customers,
  }) = _OrderState;

  factory OrderState.initial() =>
      OrderState(orders: [], insertOrderResponse: null, customers: []);
}
