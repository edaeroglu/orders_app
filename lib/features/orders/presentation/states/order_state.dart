import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/models/customer.dart';
import '../../domain/models/order_model.dart';

part 'order_state.freezed.dart';

@freezed
class OrderState with _$OrderState {
  factory OrderState({
    required List<OrderModel> orders,
    required List<Customer> customers,
    required bool? insertOrderResponse,
    required bool? deleteOrderResponse,
    required OrderModel? selectedOrder,
  }) = _OrderState;

  factory OrderState.initial() => OrderState(
      orders: [],
      insertOrderResponse: null,
      customers: [],
      deleteOrderResponse: null,
      selectedOrder: null);
}